import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moviez/core/core.dart';
import 'package:moviez/home/home.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required MovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(key: key);

  final MovieRepository _movieRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _movieRepository),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider.value(value: _movieRepository),
          ],
          child: const HomePage(),
        ),
      ),
    );
  }
}
