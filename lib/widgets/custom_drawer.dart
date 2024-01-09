import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bhagwad_gita/functions/launch_url.dart';
import 'package:bhagwad_gita/screens/about_us_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.40,
                width: size.width * 0.8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/shree_krishna.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'The Bhagavad Gita (Sanskrit: भगवद्गीता।, lit. "भगवान का गाना"), जिसे अक्सर गीता कहा जाता है, एक 701-श्लोक हिन्दू शास्त्र है जो महाभारत के भीष्म पर्व के अंश में स्थित है (अध्याय 23–40), जिसका समय दूसरे सदी ईसा पूर्व का दिनांक माना जाता है। इसे हिन्दू धर्म के मुख्य पवित्र ग्रंथों में से एक माना जाता है।',
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
                pause: const Duration(milliseconds: 3500),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(
                'Bhagwad Gita',
                style: TextStyle(
                  letterSpacing: 0.8,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text(
                'About',
                style: TextStyle(
                  letterSpacing: 0.8,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutUsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text(
                'Share',
                style: TextStyle(
                  letterSpacing: 0.8,
                ),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.api),
              title: const Text(
                'API',
                style: TextStyle(
                  letterSpacing: 0.8,
                ),
              ),
              onTap: () {
                launchGivenUrl('https://bhagavadgitaapi.in/');
              },
            ),
            SizedBox(height: size.height * 0.03),
            const Center(child: Text('Developed in India  🇮🇳')),
          ],
        ),
      ),
    );
  }
}

class Test1 extends StatelessWidget {
  const Test1({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "卐          ॐ          卐",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, color: Colors.orangeAccent),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: size.height * 0.40,
                width: size.width * 0.8,
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.accents[Random().nextInt(15)],
                      blurRadius: 12.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/shree_krishna.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: size.width * 0.08),
              const Text(
                "Bhagavadgītā\n[श्रीमद् भगवद् गीता]",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: Colors.orange),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Gita - The Divine Song of God",
                style: TextStyle(fontSize: 16.0, color: Colors.orange),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'The Bhagavad Gita (Sanskrit: भगवद्गीता।, lit. "भगवान का गाना"), जिसे अक्सर गीता कहा जाता है, एक 701-श्लोक हिन्दू शास्त्र है जो महाभारत के भीष्म पर्व के अंश में स्थित है (अध्याय 23–40), जिसका समय दूसरे सदी ईसा पूर्व का दिनांक माना जाता है। इसे हिन्दू धर्म के मुख्य पवित्र ग्रंथों में से एक माना जाता है।',
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  pause: const Duration(milliseconds: 3500),
                ),
              ),
              const SizedBox(height: 24.0),
              const Center(child: Text("Developed in India  🇮🇳")),
            ],
          ),
        ),
      ),
    );
  }
}
