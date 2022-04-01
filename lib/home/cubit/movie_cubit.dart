import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moviez/core/core.dart';

import 'package:moviez/models/models.dart';

part 'movie_cubit.freezed.dart';
part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit(
    this._movieRepository,
  ) : super(const MovieState.loading());

  final MovieRepository _movieRepository;

  Future<void> getPopularMovies() async {
    try {
      final movieResponse = await _movieRepository.getPopularMovies();

      if (movieResponse != null) {
        emit(_Success(movieResponse));
      } else {
        emit(const _Error('Movie List is Empty'));
      }
    } on Exception {
      emit(const _Error('Could not load Movie'));
    }
  }
}
