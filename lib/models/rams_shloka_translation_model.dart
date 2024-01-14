class Rams {
  Rams({
    this.author,
    this.ht,
    this.hc,
  });

  String? author;
  String? ht;
  String? hc;

  factory Rams.fromJson(Map<String, dynamic> json) => Rams(
        author: json["author"],
        ht: json["ht"],
        hc: json["hc"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "hc": hc,
      };
}
