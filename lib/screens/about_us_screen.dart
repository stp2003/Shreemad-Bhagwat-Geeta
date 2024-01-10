import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bhagwad_gita/functions/launch_url.dart';
import 'package:bhagwad_gita/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(loading: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            _buildTextSection(),
            const Divider(thickness: 2.0),
            _buildMakersInfoCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        height: size.height * 0.40,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/shree_krishna.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Bhagavadgītā\n[श्रीमद् भगवद् गीता]",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, color: Colors.orange),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'भगवद गीता, भारतीय सांस्कृतिक धरोहर का एक महत्वपूर्ण हिस्सा है जो महाभारत के भीष्म पर्व में स्थित है। यह ग्रंथ भगवान श्रीकृष्ण और अर्जुन के बीच हुआ एक संवाद है जिसमें धर्म, कर्म, भक्ति और जीवन के विभिन्न पहलुओं पर चर्चा होती है। भगवद गीता का उद्देश्य मानव जीवन को संबोधित करना और उसे सही मार्ग पर चलने के लिए मार्गदर्शन करना है। यह ग्रंथ 18 अध्यायों में बांटा गया है, जो कुल 700 श्लोकों में से बने हैं। भगवद गीता ने विभिन्न योगों और धार्मिक तत्त्वों के माध्यम से मानव जीवन को सही दिशा में मार्गदर्शन किया है और इसे एक आदर्श जीवन की दिशा में प्रेरित किया है।',
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                    letterSpacing: 0.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 3500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMakersInfoCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 5,
        child: SizedBox(
          height: 200,
          width: 280,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Meet the Maker',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                _buildMakerInfo(
                  'Shashwat Shandilya',
                  'Developer',
                  'shashwatshandilya2003@gmail.com',
                  'https://github.com/stp2003',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMakerInfo(
    String name,
    String role,
    String email,
    String socialLink,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              launchGivenUrl('https://stp2003.github.io/');
            },
            child: Text(
              role,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.email),
              const SizedBox(width: 7),
              InkWell(
                onTap: () {
                  launchGivenUrl('mailto:$email');
                },
                child: Text(email),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  launchGivenUrl(socialLink);
                },
                child: SvgPicture.asset('assets/github.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
