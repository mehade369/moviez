import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:moviez/app/app.dart';
import 'package:moviez/app/app_bloc_observer.dart';
import 'package:moviez/core/repository/movie_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: await getTemporaryDirectory(),
  // );

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
