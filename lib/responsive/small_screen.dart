import 'package:flutter/material.dart';

class small_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("responsive app"),
      ),
      body: Center(child: Text("Screen Body")),
    );
  }
}
