part of 'movie_cubit.dart';

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.loading() = _Loading;
  const factory MovieState.success(MovieResponse movieResponse) = _Success;
  const factory MovieState.error(String message) = _Error;
}
