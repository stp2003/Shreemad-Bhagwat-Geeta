import 'package:http/http.dart' as http;

import '../Models/chapters_model.dart';
import '../Models/shloka_model.dart';

class Functions {
  static Future<List<GeetaChapters>> getGeetaChapters() async {
    var url = Uri.parse('https://bhagavadgitaapi.in/chapters');
    try {
      final response = await http.get(
        url,
      );
      if (200 == response.statusCode) {
        final List<GeetaChapters> users = geetaChaptersFromJson(response.body);
        return users;
      } else {
        return <GeetaChapters>[];
      }
    } catch (e) {
      return <GeetaChapters>[];
    }
  }

  static Future<GeetaShloka> getGeetaShloka(int ch, int sk) async {
    var url = Uri.parse('https://bhagavadgitaapi.in/slok/$ch/$sk');
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final GeetaShloka shloka = geetaShlokaFromJson(response.body);
        return shloka;
      } else {
        return GeetaShloka();
      }
    } catch (e) {
      return GeetaShloka();
    }
  }
}
