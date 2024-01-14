class Chinmay {
  Chinmay({
    this.author,
    this.hc,
  });

  String? author;
  String? hc;

  factory Chinmay.fromJson(Map<String, dynamic> json) => Chinmay(
        author: json["author"],
        hc: json["hc"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "hc": hc,
      };
}
