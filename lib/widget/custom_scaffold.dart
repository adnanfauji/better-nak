import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final bool showAppBar;

  const CustomScaffold({
    super.key,
    required this.body,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1D0A4),
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          : null,
      extendBodyBehindAppBar: true,
      body: SafeArea(child: body),
    );
  }
}
