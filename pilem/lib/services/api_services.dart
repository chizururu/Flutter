import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "436d63bc13c6dd29a977bdad69ec748b";

  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = json.decode(response.body);

    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/trending/all/week?api_key=$apiKey"));
    final data = json.decode(response.body);

    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response =
        await http.get(Uri.parse("$baseUrl/movie/popular?api_key=$apiKey"));
    final data = json.decode(response.body);

    return List<Map<String, dynamic>>.from(data['results']);
  }
}
