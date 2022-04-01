// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$_$_MovieDetailsFromJson(Map<String, dynamic> json) {
  return _$_MovieDetails(
    adult: json['adult'] as bool,
    backdropPath: json['backdrop_path'] as String,
    budget: json['budget'] as int,
    homepage: json['homepage'] as String,
    id: json['id'] as int,
    overview: json['overview'] as String,
    popularity: json['popularity'] as num,
    posterPath: json['poster_path'] as String,
    releaseDate: DateTime.parse(json['release_date'] as String),
    status: json['status'] as String,
    tagline: json['tagline'] as String,
    title: json['title'] as String,
    voteAverage: json['vote_average'] as num,
    voteCount: json['vote_count'] as num,
  );
}

Map<String, dynamic> _$_$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'homepage': instance.homepage,
      'id': instance.id,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate.toIso8601String(),
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
