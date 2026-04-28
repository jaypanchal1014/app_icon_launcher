# Flutter App Icon Launcher 🚀

A simple and lightweight CLI tool to generate Android app icons from a single image.

---

## ✨ Features

* Generate Android app icons in all required sizes
* Supports multiple resolutions:

  * mdpi (48x48)
  * hdpi (72x72)
  * xhdpi (96x96)
  * xxhdpi (144x144)
  * xxxhdpi (192x192)
* Easy to use CLI command
* Fast and lightweight

---

## 📦 Installation

```yaml
dependencies:
  flutter_app_icon_launcher:
    path: ../
```

Then run:

```bash
flutter pub get
```


---

## 🚀 Usage

### 1. Add your icon

Place your icon inside your project:

```
assets/images/icon.png
```

> Recommended size: **512x512 PNG**

---

### 2. Run command

```bash
dart run flutter_app_icon_launcher:app_icon_launcher assets/images/icon.png
```

---

## 📂 Output

Icons will be generated inside:

```
android/app/src/main/res/
```

Folders created/updated:

* mipmap-mdpi
* mipmap-hdpi
* mipmap-xhdpi
* mipmap-xxhdpi
* mipmap-xxxhdpi

Each folder will contain:

```
ic_launcher.png
```

---

## 📱 Apply Changes

After generating icons, run:

```bash
flutter clean
flutter pub get
flutter run
```

> You may need to uninstall the app to see the updated icon.

---

## ⚠️ Important Notes

* This tool works only via CLI
* Do NOT run inside Flutter UI (write permission issues)
* Make sure you run the command from your Flutter project root

---

## 🧪 Example

```bash
dart run flutter_app_icon_launcher:app_icon_launcher assets/images/icon.png
```

---

## 🛠️ Tech Stack

* Dart
* Flutter
* image package

## 📄 License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

