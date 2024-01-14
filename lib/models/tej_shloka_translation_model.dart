class Tej {
  Tej({
    this.author,
    this.ht,
  });

  String? author;
  String? ht;

  factory Tej.fromJson(Map<String, dynamic> json) => Tej(
        author: json["author"],
        ht: json["ht"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
      };
}
