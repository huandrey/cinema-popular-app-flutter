// ignore_for_file: public_member_api_docs, sort_constructors_first
class CinerseclaMovie {
  final String id;
  final String title;
  final String image;
  final String phrase;
  final List<dynamic> hours;
  final List<dynamic>? cast;
  final String? classification;
  final String? description;
  final String? director;
  final String? distributor;
  final String? duration;
  final String? genre;
  final String? status;
  final String? rating;

  CinerseclaMovie({
    required this.id,
    required this.title,
    required this.image,
    required this.phrase,
    required this.hours,
    this.director,
    this.cast,
    this.classification,
    this.description,
    this.distributor,
    this.duration,
    this.genre,
    this.status,
    this.rating,
  });

  // create a method fromJson that iterate a list and create a cinerseclaMovie object
  factory CinerseclaMovie.fromJson(Map<String, dynamic> json) {
    return CinerseclaMovie(
      id: json['id'] ?? '',
      title: json['title'],
      image: json['image'],
      phrase: json['phrase'] ?? '',
      hours: json['hours'] ?? [],
      director: json['director'],
      cast: json['cast'],
      classification: json['classification'],
      description: json['description'],
      distributor: json['distributor'],
      duration: json['duration'],
      genre: json['genre'],
      status: json['status'],
    );
  }

  CinerseclaMovie copyWith({
    String? id,
    String? title,
    String? image,
    String? phrase,
    List<dynamic>? hours,
    List<dynamic>? cast,
    String? classification,
    String? description,
    String? director,
    String? distributor,
    String? duration,
    String? genre,
    String? status,
    String? rating,
  }) {
    return CinerseclaMovie(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      phrase: phrase ?? this.phrase,
      hours: hours ?? this.hours,
      cast: cast ?? this.cast,
      classification: classification ?? this.classification,
      description: description ?? this.description,
      director: director ?? this.director,
      distributor: distributor ?? this.distributor,
      duration: duration ?? this.duration,
      genre: genre ?? this.genre,
      status: status ?? this.status,
      rating: rating ?? this.rating,
    );
  }

  @override
  String toString() {
    return 'CinerseclaMovie(id: $id, \ntitle: $title, \nimage: $image, \nphrase: $phrase, \nhours: $hours, \ncast: $cast, \nclassification: $classification, \ndescription: $description, \ndirector: $director, \ndistributor: $distributor, \nduration: $duration, \ngenre: $genre, \nstatus: $status, \nrating: $rating)';
  }
}
