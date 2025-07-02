import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Book'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Меню',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('О нас'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            // 🔒 Раздел временно скрыт, чтобы не вызывал ошибку
            // ListTile(
            //   title: const Text('Даты'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/dates');
            //   },
            // ),
            ListTile(
              title: const Text('Возможности'),
              onTap: () {
                Navigator.pushNamed(context, '/opportunities');
              },
            ),
            ListTile(
              title: const Text('Контакты'),
              onTap: () {
                Navigator.pushNamed(context, '/contacts');
              },
            ),
            ListTile(
              title: const Text('Подробнее'),
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Row(
              children: [
                Text(
                  "ПРИВЕТ!",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/images/hi.png',
                  height: 24,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "ПУТЕВОДИТЕЛЬ НОВОГО",
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              "СОТРУДНИКА",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.play_arrow_rounded, color: Colors.blue),
                const SizedBox(width: 8),
                Expanded(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Қазақстан темір жолы',
                        speed: Duration(milliseconds: 50),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      TyperAnimatedText(
                        'Возможности для работников',
                        speed: Duration(milliseconds: 50),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      TyperAnimatedText(
                        'Структура компании',
                        speed: Duration(milliseconds: 50),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ],
                    repeatForever: true,
                    isRepeatingAnimation: true,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/train.png',
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
