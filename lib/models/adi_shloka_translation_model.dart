class Adi {
  Adi({
    this.author,
    this.et,
  });

  String? author;
  String? et;

  factory Adi.fromJson(Map<String, dynamic> json) => Adi(
        author: json["author"],
        et: json["et"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
      };
}
