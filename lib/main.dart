// import 'package:authexample/api/UI/todo_screen.dart';
// import 'package:authexample/bottomNavBarWidgets/bottom_navbar_widget.dart';
// import 'package:authexample/customWidgets/bottomSheet.dart';
// import 'package:authexample/imagePicker/image_picker_widget.dart';
// import 'package:authexample/package_widgets/pdf_webview.dart';
// import 'package:authexample/poll/flutter_poll.dart';
// import 'package:authexample/slivers/sliver_tutorial.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MoviesPage(),
//     );
//   }
// }
// import 'package:authexample/api/Movies%20feature/repository%20copy/todo_repository.dart';
import 'package:authexample/api/UI/todo_screen.dart';
import 'package:authexample/api/bloc/todo_cubit.dart';
import 'package:authexample/api/repository/todo_repository.dart';
import 'package:authexample/package_widgets/pdf_webview.dart';
import 'package:authexample/poll/flutter_poll.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<MoviesCubit>(
        create: (context) => MoviesCubit(
          repository: MovieRepository(
            Dio(),
          ),
        ),
        child: WebViewApp(),
      ),
    );
  }
}
