import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool loading;

  const CustomAppBar({
    super.key,
    required this.loading,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 5.0,
      centerTitle: true,
      title: Text(
        loading ? 'Loading...' : 'श्रीमद् भगवद् गीता',
        style: const TextStyle(fontSize: 25.0, letterSpacing: 0.8),
      ),
    );
  }
}
