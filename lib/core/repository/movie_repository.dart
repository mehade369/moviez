import 'package:moviez/core/api/api.dart';
import 'package:moviez/models/models.dart';

class MovieRepository {
  MovieRepository({
    TheMovieDBClient? theMovieDBClient,
  }) : _theMovieDBClient = theMovieDBClient ?? TheMovieDBClient();

  final TheMovieDBClient _theMovieDBClient;

  Future<MovieResponse?> getPopularMovies() async {
    return await _theMovieDBClient.getPopularMovies();
  }

  Future<MovieDetails?> getMovieDetails(int movieID) async {
    return await _theMovieDBClient.getMovieDetails(movieID);
  }
}
