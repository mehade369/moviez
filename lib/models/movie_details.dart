// To parse this JSON data, do
//
//     final movieDetails = movieDetailsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
abstract class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required int budget,
    required String homepage,
    required int id,
    required String overview,
    required num popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required String status,
    required String tagline,
    required String title,
    @JsonKey(name: 'vote_average') required num voteAverage,
    @JsonKey(name: 'vote_count') required num voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
