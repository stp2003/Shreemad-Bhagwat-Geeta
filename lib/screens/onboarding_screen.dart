import 'package:flutter/material.dart';

import '../models/onboard.dart';
import '../widgets/custom_button.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final pageController = PageController();

    final list = [
      Onboard(
        title: 'भगवद गीता संदेश',
        subtitle:
            'आपको अद्वितीय भगवद गीता के साथ स्वागत है, जो जीवन के महत्वपूर्ण सवालों के उत्कृष्ट उत्तर देने का एक अद्वितीय स्रोत है। इस यात्रा में हम साथ में चलेंगे, ज्ञान का स्रोत खोजेंगे और आत्मा के अद्भुत रहस्यों को खोजेंगे।',
        lottie: 'onboarding1',
      ),
      Onboard(
        title: 'गीता ग्यान सागर',
        lottie: 'mahabharat2',
        subtitle:
            'आइए, समय की यह यात्रा शुरू करें और गीता ग्यान सागर में डूबने का आनंद लें। यह एप्लिकेशन आपको भगवद गीता के अमूल्य शिक्षाओं से मिलता है, जो जीवन की महत्वपूर्ण मुद्दों पर विचार करने के लिए प्रेरित करेगा। चलिए, इस सफलता की यात्रा में हम साथी बनें और आत्मा के साथ संवाद करें।',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: pageController,
          itemCount: list.length,
          itemBuilder: (ctx, index) {
            final isLast = index == list.length - 1;

            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  height: mq.height * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/${list[index].lottie}.jpg',
                      height: mq.height * .6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  list[index].title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
                SizedBox(height: mq.height * .015),
                SizedBox(
                  width: mq.width * .7,
                  child: Text(
                    list[index].subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const Spacer(),
                Wrap(
                  spacing: 10,
                  children: List.generate(
                    list.length,
                    (i) => Container(
                      width: i == index ? 15 : 10,
                      height: 8,
                      decoration: BoxDecoration(
                        color: i == index ? Colors.orangeAccent : Colors.grey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    if (isLast) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.ease,
                      );
                    }
                  },
                  text: isLast ? 'Finish' : 'Next',
                ),
                const Spacer(flex: 2),
              ],
            );
          },
        ),
      ),
    );
  }
}
