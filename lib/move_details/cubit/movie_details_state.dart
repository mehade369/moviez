part of 'movie_details_cubit.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.success(MovieDetails movieDetails) = _Success;
  const factory MovieDetailsState.error(String message) = _Error;
}
