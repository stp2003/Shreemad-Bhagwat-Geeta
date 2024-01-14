class Anand {
  Anand({
    this.author,
    this.sc,
  });

  String? author;
  String? sc;

  factory Anand.fromJson(Map<String, dynamic> json) => Anand(
        author: json["author"],
        sc: json["sc"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
      };
}
