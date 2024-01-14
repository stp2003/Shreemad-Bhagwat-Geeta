class Meaning {
  Meaning({
    required this.en,
    required this.hi,
  });

  String en;
  String hi;

  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        en: json["en"],
        hi: json["hi"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "hi": hi,
      };
}
