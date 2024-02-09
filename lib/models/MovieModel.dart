// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

List<Movie> movieFromJson(String str) => List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  String id;
  String name;
  int v;
  String? url;
  String? rating;

  Movie({
    required this.id,
    required this.name,
    required this.v,
    this.url,
    this.rating,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    id: json["_id"],
    name: json["name"],
    v: json["__v"],
    url: json["url"],
    rating: json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "__v": v,
    "url": url,
    "rating": rating,
  };
}
