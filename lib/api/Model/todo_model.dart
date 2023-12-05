// class todoModel {
//   int userId;
//   int id;
//   String title;
//   bool completed;
//   todoModel({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.completed,
//   });

// }
class MovieModel {
  const MovieModel({
    required this.title,
    required this.urlImage,
    required this.release_date,
  });

  final String title;
  final String urlImage;
  final DateTime release_date;
}
