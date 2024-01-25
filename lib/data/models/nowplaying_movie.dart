class NowPlayingMovie {
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

  NowPlayingMovie({
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

  factory NowPlayingMovie.fromJson(Map<String, dynamic> json) {
    return NowPlayingMovie(
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

class NowPlayingMovieList {
  final List<NowPlayingMovie> results;

  NowPlayingMovieList({required this.results});

  factory NowPlayingMovieList.fromJson(Map<String, dynamic> json) {
    return NowPlayingMovieList(
      results: List<NowPlayingMovie>.from((json['results'] ?? [])
          .map((movie) => NowPlayingMovie.fromJson(movie))),
    );
  }
}

class DateRange {
  final String maximum;
  final String minimum;

  DateRange({required this.maximum, required this.minimum});

  factory DateRange.fromJson(Map<String, dynamic> json) {
    return DateRange(
      maximum: json['maximum'] ?? "",
      minimum: json['minimum'] ?? "",
    );
  }
}

class ApiResponse {
  final DateRange dates;
  final int page;
  final NowPlayingMovieList movieList;

  ApiResponse(
      {required this.dates, required this.page, required this.movieList});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      dates: DateRange.fromJson(json['dates'] ?? {}),
      page: json['page'] ?? 0,
      movieList: NowPlayingMovieList.fromJson(json),
    );
  }
}
