import 'dart:convert';

import 'package:bhagwad_gita/models/adi_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/anand_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/chinmay_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/rams_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/sankar_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/siva_shloka_translation_model.dart';
import 'package:bhagwad_gita/models/tej_shloka_translation_model.dart';

import 'abhinav_shloka_translation_model.dart';

GeetaShloka geetaShlokaFromJson(String str) => GeetaShloka.fromJson(
      json.decode(str),
    );

String geetaShlokaToJson(GeetaShloka data) => json.encode(data.toJson());

class GeetaShloka {
  GeetaShloka({
    this.id,
    this.chapter,
    this.verse,
    this.slok,
    this.transliteration,
    this.tej,
    this.siva,
    this.purohit,
    this.chinmay,
    this.san,
    this.adi,
    this.gambir,
    this.madhav,
    this.anand,
    this.rams,
    this.raman,
    this.abhinav,
    this.sankar,
    this.jaya,
    this.vallabh,
    this.ms,
    this.srid,
    this.dhan,
    this.venkat,
    this.puru,
    this.neel,
  });

  String? id;
  int? chapter;
  int? verse;
  String? slok;
  String? transliteration;
  Tej? tej;
  Siva? siva;
  Adi? purohit;
  Chinmay? chinmay;
  Adi? san;
  Adi? adi;
  Adi? gambir;
  Anand? madhav;
  Anand? anand;
  Rams? rams;
  Abhinav? raman;
  Abhinav? abhinav;
  Sankar? sankar;
  Anand? jaya;
  Anand? vallabh;
  Anand? ms;
  Anand? srid;
  Anand? dhan;
  Anand? venkat;
  Anand? puru;
  Anand? neel;

  factory GeetaShloka.fromJson(Map<String, dynamic> json) => GeetaShloka(
        id: json["_id"],
        chapter: json["chapter"],
        verse: json["verse"],
        slok: json["slok"],
        transliteration: json["transliteration"],
        tej: Tej.fromJson(json["tej"]),
        siva: Siva.fromJson(json["siva"]),
        purohit: Adi.fromJson(json["purohit"]),
        chinmay: Chinmay.fromJson(json["chinmay"]),
        san: Adi.fromJson(json["san"]),
        adi: Adi.fromJson(json["adi"]),
        gambir: Adi.fromJson(json["gambir"]),
        madhav: Anand.fromJson(json["madhav"]),
        anand: Anand.fromJson(json["anand"]),
        rams: Rams.fromJson(json["rams"]),
        raman: Abhinav.fromJson(json["raman"]),
        abhinav: Abhinav.fromJson(json["abhinav"]),
        sankar: Sankar.fromJson(json["sankar"]),
        jaya: Anand.fromJson(json["jaya"]),
        vallabh: Anand.fromJson(json["vallabh"]),
        ms: Anand.fromJson(json["ms"]),
        srid: Anand.fromJson(json["srid"]),
        dhan: Anand.fromJson(json["dhan"]),
        venkat: Anand.fromJson(json["venkat"]),
        puru: Anand.fromJson(json["puru"]),
        neel: Anand.fromJson(json["neel"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "chapter": chapter,
        "verse": verse,
        "slok": slok,
        "transliteration": transliteration,
        "tej": tej?.toJson(),
        "siva": siva?.toJson(),
        "purohit": purohit?.toJson(),
        "chinmay": chinmay?.toJson(),
        "san": san?.toJson(),
        "adi": adi?.toJson(),
        "gambir": gambir?.toJson(),
        "madhav": madhav?.toJson(),
        "anand": anand?.toJson(),
        "rams": rams?.toJson(),
        "raman": raman?.toJson(),
        "abhinav": abhinav?.toJson(),
        "sankar": sankar?.toJson(),
        "jaya": jaya?.toJson(),
        "vallabh": vallabh?.toJson(),
        "ms": ms?.toJson(),
        "srid": srid?.toJson(),
        "dhan": dhan?.toJson(),
        "venkat": venkat?.toJson(),
        "puru": puru?.toJson(),
        "neel": neel?.toJson(),
      };
}
