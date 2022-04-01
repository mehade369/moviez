import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez/core/core.dart';

import 'package:moviez/models/models.dart';
import 'package:moviez/move_details/cubit/movie_details_cubit.dart';

import 'movie_details_view.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage._({
    Key? key,
    required this.movieID,
  }) : super(key: key);

  static Route route(int movieID) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider(
        create: (context) => MovieDetailsCubit(context.read<MovieRepository>())
          ..fetchMovieDetails(movieID),
        child: MovieDetailsPage._(movieID: movieID),
      ),
    );
  }

  final int movieID;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: MovieDetailsView()));
  }
}
