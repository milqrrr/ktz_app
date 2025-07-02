import 'package:flutter/material.dart';

class OpportunitiesMobile extends StatelessWidget {
  const OpportunitiesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Возможности')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildExpandableCard(
            context: context,
            title: '🕓 Отображение расписания',
            description:
            'Вы можете видеть актуальное расписание всех поездов, включая пересадки и изменения прямо в приложении.',
            imagePath: 'assets/images/schedule_example.jpg',
          ),
          _buildExpandableCard(
            context: context,
            title: '📍 Следование поезда на карте',
            description:
            'Следите за перемещением поезда в реальном времени на карте. Удобно для планирования пересадок и встречи пассажиров.',
            imagePath: 'assets/images/map_tracking.jpg',
          ),
          _buildExpandableCard(
            context: context,
            title: '🚆 Номер вагона и схема состава',
            description:
            'Теперь вы можете заранее узнать номер вагона и увидеть его расположение на схеме состава поезда.',
            imagePath: 'assets/images/train_layout.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableCard({
    required BuildContext context,
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        children: [
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Открытие подробной информации...'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.info_outline),
              label: const Text("Подробнее"),
            ),
          ),
        ],
      ),
    );
  }
}
