import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:moviez/core/repository/movie_repository.dart';
import 'package:moviez/models/models.dart';

part 'movie_details_cubit.freezed.dart';
part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(
    this._movieRepository,
  ) : super(const MovieDetailsState.loading());

  final MovieRepository _movieRepository;

  Future<void> fetchMovieDetails(int movieID) async {
    try {
      final movieDetails = await _movieRepository.getMovieDetails(movieID);
      print(movieDetails);
      if (movieDetails != null) {
        emit(_Success(movieDetails));
      } else {
        emit(const _Error('Empty movie list'));
      }
    } catch (e) {
      emit(const _Error('Could not load Movie Details'));
    }
  }
}
