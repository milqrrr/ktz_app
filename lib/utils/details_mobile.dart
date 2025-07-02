import 'package:flutter/material.dart';

class DetailsMobile extends StatelessWidget {
  const DetailsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Подробнее')),
      body: const Center(
        child: Text(
          'Дополнительные сведения о компании и адаптации.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
