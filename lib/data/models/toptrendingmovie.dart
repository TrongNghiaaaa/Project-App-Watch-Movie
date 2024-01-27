class TopTrendingMovie {
  final int id;
  final bool adult;
  final String backdropPath;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String mediaType;
  final List<int> genreIds;
  final double popularity;
  final String releaseDate;
  final bool video;
  final double voteAverage;
  final int voteCount;

  TopTrendingMovie({
    required this.id,
    required this.adult,
    required this.backdropPath,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TopTrendingMovie.fromJson(Map<String, dynamic> json) {
    return TopTrendingMovie(
      id: json['id'] ?? 0,
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? "",
      title: json['title'] ?? "",
      originalLanguage: json['original_language'] ?? "",
      originalTitle: json['original_title'] ?? "",
      overview: json['overview'] ?? "",
      posterPath: json['poster_path'] ?? "",
      mediaType: json['media_type'] ?? "",
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      popularity: (json['popularity'] ?? 0.0).toDouble(),
      releaseDate: json['release_date'] ?? "",
      video: json['video'] ?? false,
      voteAverage: (json['vote_average'] ?? 0.0).toDouble(),
      voteCount: json['vote_count'] ?? 0,
    );
  }
}

class TopTrendingMovieResponse {
  final List<TopTrendingMovie> results;

  TopTrendingMovieResponse({
    required this.results,
  });

  factory TopTrendingMovieResponse.fromJson(Map<String, dynamic> json) {
    return TopTrendingMovieResponse(
      results: List<TopTrendingMovie>.from((json['results'] ?? [])
          .map((movie) => TopTrendingMovie.fromJson(movie))),
    );
  }
}
