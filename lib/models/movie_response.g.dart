// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponse _$_$_MovieResponseFromJson(Map<String, dynamic> json) {
  return _$_MovieResponse(
    page: json['page'] as int,
    movies: (json['results'] as List<dynamic>)
        .map((e) => Movie.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
  );
}

Map<String, dynamic> _$_$_MovieResponseToJson(_$_MovieResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
