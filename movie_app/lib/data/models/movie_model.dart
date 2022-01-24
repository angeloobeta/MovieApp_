import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final int id;
  final bool video;
  final int voteCount;
  final String title;
  final double voteAverage;
  final List<int> genreIds;
  final String releaseDate;
  final String originalLanguage;
  final String originalTitle;
  final String posterPath;
  final String overview;
  final bool adult;
  final String backdropPath;
  final double popularity;
  final String mediaType;

  MovieModel(
      {required this.id,
      required this.voteCount,
      required this.title,
      required this.voteAverage,
      required this.video,
      required this.genreIds,
      required this.releaseDate,
      required this.originalLanguage,
      required this.originalTitle,
      required this.posterPath,
      required this.overview,
      required this.adult,
      required this.backdropPath,
      required this.popularity,
      required this.mediaType})
      : super(
            id: id,
            title: title,
            backdropPath: backdropPath,
            posterPath: posterPath,
            relaseDate: releaseDate,
            voteAverage: voteAverage,
            overView: overview);

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      voteCount: json['vote_count'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble() ?? 0.0,
      video: json['video'],
      genreIds: json['genre_ids'].cast<int>(),
      releaseDate: json['release_date'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      overview: json['overview'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vote_count'] = this.voteCount;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['video'] = this.video;
    data['genre_ids'] = this.genreIds;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['overview'] = this.overview;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
