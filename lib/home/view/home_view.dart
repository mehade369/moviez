import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:moviez/app/constant.dart';

import 'package:moviez/home/cubit/movie_cubit.dart';
import 'package:moviez/models/models.dart';
import 'package:moviez/move_details/view/view.dart';
import 'package:moviez/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const Text(
              'Movie',
              style: TextStyle(
                color: MyColors.myWhite,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'z',
              style: TextStyle(
                color: MyColors.myRed,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Card(
          child: Center(
            child: BlocBuilder<MovieCubit, MovieState>(
              builder: (_, state) {
                return state.when(
                  loading: () => const Loading(),
                  success: (movieResponse) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Popular Movies',
                          style: TextStyle(
                            color: MyColors.myRed,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: MovieList(
                          movieList: movieResponse.movies,
                        ),
                      )
                    ],
                  ),
                  error: (message) => Error(message: message),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({
    Key? key,
    required this.movieList,
  }) : super(key: key);

  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: movieList.length,
      itemBuilder: (_, int index) => MovieCard(
        movie: movieList[index],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: movie.id,
      child: Card(
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MovieDetailsPage.route(movie.id),
          ),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
                ),
                fit: BoxFit.cover,
                onError: (_, __) => const Error(
                  message: 'Could not load image',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                movie.title,
                maxLines: 2,
                softWrap: true,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
