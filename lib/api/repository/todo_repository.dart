// import 'dart:convert';

// import 'package:authexample/api/Model/todo_model.dart';
// import 'package:http/http.dart' as http;

// class TodoRepository {
//   Future<List<Set<todoModel>>> getAll() async {
//     const url = "https://jsonplaceholder.typicode.com/todos";
//     final uri = await Uri.parse(url);
//     final response = await http.get(uri);
//     if (response.statusCode == 200) {
//       final json = jsonEncode(response.body) as List;
//       final result = json
//           .map((e) => {
//                 todoModel(
//                     userId: e['userId'],
//                     id: e['id'],
//                     title: e['title'],
//                     completed: e['completed'])
//               })
//           .toList();
//       return result;
//     } else {}
//   }
// }

// import 'package:authexample/api/Movies%20feature/Model/todo_model.dart';
import 'package:dio/dio.dart';

import '../Model/todo_model.dart';

class MovieRepository {
  const MovieRepository(this.client);

  final Dio client;

  Future<List<MovieModel>> getMovies() async {
    try {
      final url =
          'https://api.themoviedb.org/3/trending/movie/week?api_key=060e7c76aff06a20ca4a875981216f3f';

      final response = await client.get(url);

      final movies = List<MovieModel>.of(
        response.data['results'].map<MovieModel>(
          (json) => MovieModel(
            title: json['title'],
            urlImage: 'https://image.tmdb.org/t/p/w185${json['poster_path']}',
            release_date: json['release_date'],
          ),
        ),
      );

      return movies;
    } catch (e) {
      throw e;
    }
  }
}
