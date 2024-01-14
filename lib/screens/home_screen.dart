import 'package:bhagwad_gita/functions/functions.dart';
import 'package:bhagwad_gita/utils/custom_loader.dart';
import 'package:bhagwad_gita/widgets/custom_app_bar.dart';
import 'package:bhagwad_gita/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../Models/Chapters_Model.dart';
import '../db/database.dart';
import '../widgets/AdhayListTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<GeetaChapters> _geetaChapters;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Database.showOnboarding = false;
    Functions.getGeetaChapters().then(
      (geetaChapters) {
        setState(() {
          _geetaChapters = geetaChapters;
          _loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(loading: _loading),
      drawer: const CustomDrawer(),
      body: Container(
        child: _loading
            ? const CustomLoader(size: 60.0)
            : ListView.builder(
                itemCount: _geetaChapters.length,
                itemBuilder: (context, index) {
                  return AdhayListTile(
                    geetaChapters: _geetaChapters,
                    index: index,
                  );
                },
              ),
      ),
    );
  }
}
