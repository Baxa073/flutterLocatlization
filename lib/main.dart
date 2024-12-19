import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:internationalization/page_1.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
        Locale('ru', 'RU'),
      ],
      path: 'assets/translations',
      startLocale: const Locale('uz', 'UZ'),
      child: const MyApp(),
    ),
  );
}
