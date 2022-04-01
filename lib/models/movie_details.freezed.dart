// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
class _$MovieDetailsTearOff {
  const _$MovieDetailsTearOff();

  _MovieDetails call(
      {required bool adult,
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
      @JsonKey(name: 'vote_count') required num voteCount}) {
    return _MovieDetails(
      adult: adult,
      backdropPath: backdropPath,
      budget: budget,
      homepage: homepage,
      id: id,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      status: status,
      tagline: tagline,
      title: title,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  MovieDetails fromJson(Map<String, Object> json) {
    return MovieDetails.fromJson(json);
  }
}

/// @nodoc
const $MovieDetails = _$MovieDetailsTearOff();

/// @nodoc
mixin _$MovieDetails {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime get releaseDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  num get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      int budget,
      String homepage,
      int id,
      String overview,
      num popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      String status,
      String tagline,
      String title,
      @JsonKey(name: 'vote_average') num voteAverage,
      @JsonKey(name: 'vote_count') num voteCount});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res> implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  final MovieDetails _value;
  // ignore: unused_field
  final $Res Function(MovieDetails) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(
          _MovieDetails value, $Res Function(_MovieDetails) then) =
      __$MovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      int budget,
      String homepage,
      int id,
      String overview,
      num popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      String status,
      String tagline,
      String title,
      @JsonKey(name: 'vote_average') num voteAverage,
      @JsonKey(name: 'vote_count') num voteCount});
}

/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res> extends _$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(
      _MovieDetails _value, $Res Function(_MovieDetails) _then)
      : super(_value, (v) => _then(v as _MovieDetails));

  @override
  _MovieDetails get _value => super._value as _MovieDetails;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_MovieDetails(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      required this.budget,
      required this.homepage,
      required this.id,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.status,
      required this.tagline,
      required this.title,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount});

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDetailsFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  final int budget;
  @override
  final String homepage;
  @override
  final int id;
  @override
  final String overview;
  @override
  final num popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final num voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final num voteCount;

  @override
  String toString() {
    return 'MovieDetails(adult: $adult, backdropPath: $backdropPath, budget: $budget, homepage: $homepage, id: $id, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, status: $status, tagline: $tagline, title: $title, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetails &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(voteCount);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDetailsToJson(this);
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
      {required bool adult,
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
      @JsonKey(name: 'vote_count') required num voteCount}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  bool get adult => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @override
  int get budget => throw _privateConstructorUsedError;
  @override
  String get homepage => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  num get popularity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'release_date')
  DateTime get releaseDate => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get tagline => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_count')
  num get voteCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
