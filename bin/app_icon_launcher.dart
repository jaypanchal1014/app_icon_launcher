import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:flutter_app_icon_launcher/src/icon_generator.dart';

void main(List<String> args) {
  print(" App Icon Launcher Started");

  final path = args.isNotEmpty ? args[0] : 'assets/images/icon.png';

  final file = File(path);

  if (!file.existsSync()) {
    print("Icon file not found!");
    return;
  }

  final image = img.decodeImage(file.readAsBytesSync());

  if (image == null) {
    print("Invalid image!");
    return;
  }

  IconGenerator.generateAndroidIcons(image);

  print("Icons Generated Successfully!");
}