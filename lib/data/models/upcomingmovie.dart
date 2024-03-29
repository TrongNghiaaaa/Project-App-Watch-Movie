class UpComingMovie {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  UpComingMovie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory UpComingMovie.fromJson(Map<String, dynamic> json) {
    return UpComingMovie(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? "",
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      id: json['id'] ?? 0,
      originalLanguage: json['original_language'] ?? "",
      originalTitle: json['original_title'] ?? "",
      overview: json['overview'] ?? "",
      popularity: (json['popularity'] ?? 0.0).toDouble(),
      posterPath: json['poster_path'] ?? "",
      releaseDate: json['release_date'] ?? "",
      title: json['title'] ?? "",
      video: json['video'] ?? false,
      voteAverage: (json['vote_average'] ?? 0.0).toDouble(),
      voteCount: json['vote_count'] ?? 0,
    );
  }
}

class UpComingMovieList {
  final List<UpComingMovie> results;

  UpComingMovieList({
    required this.results,
  });

  factory UpComingMovieList.fromJson(Map<String, dynamic> json) {
    return UpComingMovieList(
      results: List<UpComingMovie>.from((json['results'] ?? [])
          .map((movie) => UpComingMovie.fromJson(movie))),
    );
  }
}
