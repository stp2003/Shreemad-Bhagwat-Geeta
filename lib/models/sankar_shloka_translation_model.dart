class Sankar {
  Sankar({
    this.author,
    this.ht,
    this.sc,
    this.et,
  });

  String? author;
  String? ht;
  String? sc;
  String? et;

  factory Sankar.fromJson(Map<String, dynamic> json) => Sankar(
        author: json["author"],
        ht: json["ht"],
        sc: json["sc"],
        et: json["et"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "sc": sc,
        "et": et,
      };
}
