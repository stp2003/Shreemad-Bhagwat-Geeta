import 'package:flutter/material.dart';

import '../Models/Chapters_Model.dart';
import '../screens/chapter_screen.dart';

class AdhayListTile extends StatelessWidget {
  const AdhayListTile({
    super.key,
    required List<GeetaChapters> geetaChapters,
    required this.index,
  }) : _geetaChapters = geetaChapters;

  final List<GeetaChapters> _geetaChapters;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Text(
              "  अध्याय  ${index + 1}  ",
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
            title: Text(
              _geetaChapters[index].name,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
              ),
            ),
            subtitle: Text(
              _geetaChapters[index].translation,
              style: const TextStyle(
                fontSize: 16.0,
                letterSpacing: 0.4,
              ),
            ),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return ChapterScreen(
                        ch: index + 1,
                        chapters: _geetaChapters[index],
                      );
                    },
                  ),
                );
              },
              child: const Text(
                'Read More >>',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 0.2,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
        ),
        const Divider(thickness: 3.0),
      ],
    );
  }
}
