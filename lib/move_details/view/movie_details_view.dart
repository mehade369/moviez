import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moviez/app/constant.dart';

import 'package:moviez/models/models.dart';
import 'package:moviez/move_details/cubit/movie_details_cubit.dart';
import 'package:moviez/widgets/widgets.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Loading(),
          success: (movieDetails) => MovieDetailsScreen(
            movieDetails: movieDetails,
          ),
          error: (message) => Error(
            message: message,
          ),
        );
      },
    );
  }
}

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    Key? key,
    required this.movieDetails,
  }) : super(key: key);

  final MovieDetails movieDetails;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: movieDetails.id,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      'https://image.tmdb.org/t/p/original${movieDetails.backdropPath}',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColors.myRed,
                        MyColors.myRed.withOpacity(0.8),
                        MyColors.myRed.withOpacity(0.5),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieDetails.title,
                          style: const TextStyle(
                            color: MyColors.myWhite,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          movieDetails.releaseDate
                              .toIso8601String()
                              .split('T')
                              .first,
                          style: TextStyle(
                            color: MyColors.myWhite.withOpacity(0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              movieDetails.voteAverage.toDouble().toString(),
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(width: 5),
                            ...List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: (index <
                                        (movieDetails.voteAverage / 2).floor())
                                    ? Colors.yellow
                                    : Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Overview',
                    style: TextStyle(
                      color: MyColors.myWhite.withOpacity(0.7),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  movieDetails.overview,
                  style: TextStyle(
                    color: MyColors.myWhite.withOpacity(0.7),
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
