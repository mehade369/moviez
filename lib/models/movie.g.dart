// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$_$_ResultFromJson(Map<String, dynamic> json) {
  return _$_Result(
    adult: json['adult'] as bool,
    backdropPath: json['backdrop_path'] as String,
    id: json['id'] as int,
    originalTitle: json['original_title'] as String,
    overview: json['overview'] as String,
    popularity: (json['popularity'] as num).toDouble(),
    posterPath: json['poster_path'] as String,
    releaseDate: DateTime.parse(json['release_date'] as String),
    title: json['title'] as String,
    video: json['video'] as bool,
    voteAverage: (json['vote_average'] as num).toDouble(),
    voteCount: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
