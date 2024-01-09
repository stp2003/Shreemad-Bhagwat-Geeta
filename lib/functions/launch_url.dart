import 'package:url_launcher/url_launcher.dart';

launchGivenUrl(String url) {
  launchUrl(Uri.parse(url));
}
