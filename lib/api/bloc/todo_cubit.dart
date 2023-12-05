// import 'package:authexample/api/bloc/todo_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class MoviesCubit extends Cubit<TodoState> {
//   MoviesCubit({required this.repository}) : super(InitialState()) {
//     getTrendingMovies();
//   }

//   final MovieRepository repository;
// }

// void getTrendingMovies() async {
//   try {
//     emit(LoadingState());
//     final movies = await repository.getMovies();
//     emit(LoadedState(movies));
//   } catch (e) {
//     emit(ErrorState());
//   }
// }

import 'package:authexample/api/bloc/todo_state.dart';
import 'package:authexample/api/repository/todo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit({required this.repository}) : super(InitialState()) {
    getTrendingMovies();
  }

  final MovieRepository repository;

  void getTrendingMovies() async {
    try {
      emit(LoadingState());
      final movies = await repository.getMovies();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}