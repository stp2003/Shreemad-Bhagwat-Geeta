class Siva {
  Siva({
    this.author,
    this.et,
    this.ec,
  });

  String? author;
  String? et;
  String? ec;

  factory Siva.fromJson(Map<String, dynamic> json) => Siva(
        author: json["author"],
        et: json["et"],
        ec: json["ec"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
        "ec": ec,
      };
}
