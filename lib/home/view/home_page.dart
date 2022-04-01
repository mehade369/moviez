import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez/core/core.dart';
import 'package:moviez/home/cubit/movie_cubit.dart';
import 'package:moviez/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieCubit(
        context.read<MovieRepository>(),
      )..getPopularMovies(),
      child: const HomeView(),
    );
  }
}
