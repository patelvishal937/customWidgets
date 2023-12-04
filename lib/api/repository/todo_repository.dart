import 'dart:convert';

import 'package:authexample/api/Model/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<List<Set<todoModel>>> getAll() async {
    const url = "https://jsonplaceholder.typicode.com/todos";
    final uri = await Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonEncode(response.body) as List;
      final result = json
          .map((e) => {
                todoModel(
                    userId: e['userId'],
                    id: e['id'],
                    title: e['title'],
                    completed: e['completed'])
              })
          .toList();
      return result;
    } else {}
  }
}
