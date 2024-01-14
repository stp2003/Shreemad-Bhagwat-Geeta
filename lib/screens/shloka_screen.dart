import 'package:bhagwad_gita/functions/functions.dart';
import 'package:bhagwad_gita/utils/custom_loader.dart';
import 'package:flutter/material.dart';

import '../Models/shloka_model.dart';

class ShlokaScreen extends StatefulWidget {
  final int sk;
  final int ch;

  const ShlokaScreen({
    super.key,
    required this.sk,
    required this.ch,
  });

  @override
  State<ShlokaScreen> createState() => _ShlokaScreenState();
}

class _ShlokaScreenState extends State<ShlokaScreen> {
  late GeetaShloka _shloka;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Functions.getGeetaShloka(widget.ch, widget.sk).then(
      (geetaShloka) {
        setState(() {
          _shloka = geetaShloka;
          _loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          _loading ? 'Loading...' : "श्लोक ${_shloka.verse}",
          style: const TextStyle(
            fontSize: 26,
            letterSpacing: 0.8,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: _loading
            ? const CustomLoader(size: 60.0)
            : Container(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectableText(
                        _shloka.slok!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 25.0,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      SelectableText(
                        _shloka.chinmay!.hc!,
                        style: const TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Divider(thickness: 1.5),
                      const SizedBox(height: 25.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/shree_krishna.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
