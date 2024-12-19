import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:internationalization/core/constants/app_strings.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          AppStrings.appName.tr(),
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              AppStrings.word1.tr(),
              style: const TextStyle(color: Colors.black, fontSize: 40),
            ).tr(),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.word2.tr(),
              style: const TextStyle(color: Colors.black, fontSize: 40),
            ).tr(),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.word3.tr(),
              style: const TextStyle(color: Colors.black, fontSize: 40),
            ).tr(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('en', 'US'));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "En",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('ru', 'RU'));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Ru",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('uz', 'UZ'));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Uz",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
