// To parse this JSON data, do
//
//     final movieResponse = movieResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
abstract class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    required int page,
    @JsonKey(name: 'results') required List<Movie> movies,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
