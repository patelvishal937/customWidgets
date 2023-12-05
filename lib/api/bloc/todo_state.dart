// import 'package:authexample/api/Model/todo_model.dart';
// import 'package:equatable/equatable.dart';

// abstract class TodoState extends Equatable {}

// class InitialState extends TodoState {
//   @override
//   List<Object> get props => [];
// }
// class LoadingState extends TodoState {
//   @override
//   List<Object> get props => [];
// }
// class LoadedState extends TodoState {
//   LoadedState(this.movies);

//   final List<todoModel> movies;

//   @override
//   List<Object> get props => [movies];
// }
// class ErrorState extends TodoState {
//   @override
//   List<Object> get props => [];
// }

import 'package:authexample/api/Model/todo_model.dart';
import 'package:equatable/equatable.dart';



abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MoviesState {
  LoadedState(this.movies);

  final List<MovieModel> movies;

  @override
  List<Object> get props => [movies];
}

class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}
