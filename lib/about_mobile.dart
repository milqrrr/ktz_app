import 'package:flutter/material.dart';
import '../configs/app_text.dart';
import '../utils/static_utils.dart';
import '../utils/space.dart'; // ✅ Добавлен импорт

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('О нас'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              StaticUtils.blackWhitePhoto,
              height: height * 0.25,
            ),
            Space.y1!,
            Text(
              'Добро пожаловать в команду!',
              style: AppText.h2,
              textAlign: TextAlign.center,
            ),
            Space.y!,
            Text(
              'Ты теперь часть АО «НК «ҚТЖ». Мы рады приветствовать тебя!',
              style: AppText.b1,
              textAlign: TextAlign.center,
            ),
            Space.y1!,
            Text(
              'ktz_app — это официальное мобильное приложение АО «Қазақстан темір жолы», созданное для удобства пассажиров и клиентов железнодорожного транспорта по всему Казахстану.',
              style: AppText.b2!.copyWith(
                height: 1.7,
                letterSpacing: 0.8,
              ),
              textAlign: TextAlign.justify,
            ),
            Space.y1!,
            ElevatedButton.icon(
              onPressed: () {
                // позже можно открыть PDF по ссылке
              },
              icon: const Icon(Icons.file_open),
              label: const Text("Посмотреть резюме"),
            ),
          ],
        ),
      ),
    );
  }
}
