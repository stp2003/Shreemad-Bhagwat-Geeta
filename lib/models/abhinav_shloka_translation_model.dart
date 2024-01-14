class Abhinav {
  Abhinav({
    this.author,
    this.sc,
    this.et,
  });

  String? author;
  String? sc;
  String? et;

  factory Abhinav.fromJson(Map<String, dynamic> json) => Abhinav(
        author: json["author"],
        sc: json["sc"],
        et: json["et"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
        "et": et,
      };
}
