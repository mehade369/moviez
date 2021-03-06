import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:moviez/app/app.dart';
import 'package:moviez/app/app_bloc_observer.dart';
import 'package:moviez/core/repository/movie_repository.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(App(
      movieRepository: MovieRepository(),
    )),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
