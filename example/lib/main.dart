import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:flutter_app_icon_launcher/flutter_app_icon_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void generateIcons() async {
    try {
      print("Button pressed");

      final bytes = await rootBundle.load('assets/images/icon.png');

      final image = img.decodeImage(bytes.buffer.asUint8List());

      if (image == null) {
        print("Invalid image");
        return;
      }

      IconGenerator.generateAndroidIcons(image);

      print("Icons Generated from UI!");
    } catch (e) {
      print(" Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icon Generator Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: generateIcons,
          child: const Text("Generate Icons"),
        ),
      ),
    );
  }
}
