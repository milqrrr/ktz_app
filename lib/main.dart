import 'package:flutter/material.dart';
import 'home_mobile.dart';
import 'about_mobile.dart';
import 'configs/size_config.dart';

// ✅ Правильные пути

import 'utils/opportunities_mobile.dart';
import 'utils/contacts_mobile.dart';
import 'utils/details_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(context); // ⬅️ Инициализация размеров
            return MaterialApp(
              title: 'Welcome Book',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Montserrat',
                primarySwatch: Colors.blue,
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => const HomeMobile(),
                '/about': (context) => const AboutMobile(),
                '/opportunities': (context) => const OpportunitiesMobile(),
                '/contacts': (context) => const ContactsMobile(),
                '/details': (context) => const DetailsMobile(),
              },
            );
          },
        );
      },
    );
  }
}
