import 'package:dio/dio.dart';
import 'package:moviez/models/models.dart';

/// api_key = 06c53942e91f99ff4377cd365e283561
/// https://api.themoviedb.org/3/movie/550?api_key=06c53942e91f99ff4377cd365e283561
///

class TheMovieDBClient {
  TheMovieDBClient({
    Dio? dio,
  }) : _dio = dio ?? Dio()
          ..options.baseUrl = _baseURL
          ..options.queryParameters = <String, dynamic>{
            'api_key': '06c53942e91f99ff4377cd365e283561',
          }
          ..interceptors.add(LogInterceptor(
            requestHeader: false,
            responseHeader: false,
          ));

  final Dio _dio;
  static final _baseURL = Uri.https('api.themoviedb.org', '3/').toString();

  Future<MovieResponse?> getPopularMovies() async {
    final response = await _dio.get('movie/popular');

    try {
      if (response.statusCode == 200) {
        return MovieResponse.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.toString());
    }
  }

  Future<MovieDetails?> getMovieDetails(int movieID) async {
    final response = await _dio.get('movie/$movieID');

    try {
      if (response.statusCode == 200) {
        return MovieDetails.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.toString());
    }
  }
}
