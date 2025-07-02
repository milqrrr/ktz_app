import 'package:flutter/material.dart';

class ContactsMobile extends StatelessWidget {
  const ContactsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildContactCard(
            icon: Icons.chat_bubble_outline,
            title: 'Онлайн-чат',
            subtitle: 'Доступен 24/7, оператор с 09:00 до 22:00',
            buttonText: 'Открыть чат',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Открытие чата...')),
              );
            },
          ),
          _buildContactCard(
            icon: Icons.phone,
            title: 'Телефон поддержки',
            subtitle: '+7 701 123 4567 (Пн–Пт: 09:00–18:00)',
            buttonText: 'Позвонить',
            onPressed: () {
              // Здесь можно добавить функционал звонка
            },
          ),
          _buildContactCard(
            icon: Icons.email_outlined,
            title: 'Электронная почта',
            subtitle: 'support@ktz.kz',
            buttonText: 'Написать письмо',
            onPressed: () {
              // Здесь можно добавить launch email
            },
          ),
          _buildContactCard(
            icon: Icons.location_on_outlined,
            title: 'Главный офис',
            subtitle: 'г. Астана, ул. Абая 10',
            buttonText: 'Открыть карту',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Переход к карте...')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 28, color: Colors.blue),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_forward_ios, size: 16),
                label: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
