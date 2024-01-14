import 'dart:convert';

import 'meaning_model.dart';

List<GeetaChapters> geetaChaptersFromJson(String str) =>
    List<GeetaChapters>.from(
      json.decode(str).map((x) => GeetaChapters.fromJson(x)),
    );

String geetaChaptersToJson(List<GeetaChapters> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class GeetaChapters {
  GeetaChapters({
    required this.chapterNumber,
    required this.versesCount,
    required this.name,
    required this.translation,
    required this.transliteration,
    required this.meaning,
    required this.summary,
  });

  int chapterNumber;
  int versesCount;
  String name;
  String translation;
  String transliteration;
  Meaning meaning;
  Meaning summary;

  factory GeetaChapters.fromJson(Map<String, dynamic> json) => GeetaChapters(
        chapterNumber: json["chapter_number"],
        versesCount: json["verses_count"],
        name: json["name"],
        translation: json["translation"],
        transliteration: json["transliteration"],
        meaning: Meaning.fromJson(json["meaning"]),
        summary: Meaning.fromJson(json["summary"]),
      );

  Map<String, dynamic> toJson() => {
        "chapter_number": chapterNumber,
        "verses_count": versesCount,
        "name": name,
        "translation": translation,
        "transliteration": transliteration,
        "meaning": meaning.toJson(),
        "summary": summary.toJson(),
      };
}
