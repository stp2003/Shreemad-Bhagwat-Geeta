import 'package:flutter/material.dart';

import '../Models/Chapters_Model.dart';
import 'shloka_screen.dart';

class ChapterScreen extends StatefulWidget {
  final int ch;
  final GeetaChapters chapters;

  const ChapterScreen({
    super.key,
    required this.ch,
    required this.chapters,
  });

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5.0,
        title: Text(
          "अध्याय ${widget.ch}",
          style: const TextStyle(
            fontSize: 26,
            letterSpacing: 0.8,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                widget.chapters.name,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  color: Colors.orange,
                ),
              ),
              SelectableText(
                widget.chapters.translation,
                style: const TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.5,
                  color: Colors.orangeAccent,
                ),
              ),
              const SizedBox(height: 8.0),
              SelectableText(
                widget.chapters.meaning.hi,
                style: const TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                ),
              ),
              SelectableText(
                widget.chapters.meaning.en,
                style: const TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                ),
              ),
              const SizedBox(height: 22.0),
              SelectableText(
                widget.chapters.summary.hi,
                style: const TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(height: 16.0),
              SelectableText(
                widget.chapters.summary.en,
                style: const TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 0.4,
                ),
              ),
              const Divider(thickness: 2.0),
              const SizedBox(height: 16.0),
              const Text(
                "All Shloka[श्लोक]",
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                widget.chapters.versesCount.toString(),
                style: const TextStyle(
                  fontSize: 32.0,
                  color: Colors.redAccent,
                ),
              ),
              ListView.builder(
                itemCount: widget.chapters.versesCount,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (BuildContext context) {
                                return ShlokaScreen(
                                  sk: index + 1,
                                  ch: widget.ch,
                                );
                              },
                            ),
                          );
                        },
                        title: Text(
                          "श्लोक  - ${index + 1}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Text(
                          "Read [ पढे ]",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(thickness: 1.0),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
