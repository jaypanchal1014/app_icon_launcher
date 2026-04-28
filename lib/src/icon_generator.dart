import 'dart:io';
import 'package:image/image.dart' as img;

class IconGenerator {
  static void generateAndroidIcons(img.Image image) {
    final sizes = {
      "mdpi": 48,
      "hdpi": 72,
      "xhdpi": 96,
      "xxhdpi": 144,
      "xxxhdpi": 192,
    };

    sizes.forEach((key, size) {
      final resized = img.copyResize(image, width: size, height: size);

      final path = 'android/app/src/main/res/mipmap-$key/ic_launcher.png';
      final file = File(path);

      file.createSync(recursive: true);
      file.writeAsBytesSync(img.encodePng(resized));
    });
  }
}