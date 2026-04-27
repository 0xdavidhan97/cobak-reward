import 'package:flutter/material.dart';

class HomeStatsRow extends StatelessWidget {
  const HomeStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(child: _StatCard(emoji: '🔥', title: '공포탐욕지수', value: '47%', subtitle: '중립', subtitleColor: Colors.orange)),
          const SizedBox(width: 8),
          Expanded(child: _StatCard(emoji: '🌶️', title: '김치프리미엄', value: '0.69%', subtitle: '정상', subtitleColor: Colors.green)),
          const SizedBox(width: 8),
          Expanded(child: _StatCard(emoji: '₿', title: '비트코인', value: '116,955', subtitle: '300,000원', subtitleColor: Colors.grey)),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String value;
  final String subtitle;
  final Color subtitleColor;

  const _StatCard({
    required this.emoji,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 12)),
              const SizedBox(width: 3),
              Expanded(
                child: Text(title, style: TextStyle(fontSize: 10, color: Colors.grey[600]), overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black87), overflow: TextOverflow.ellipsis),
          const SizedBox(height: 2),
          Text(subtitle, style: TextStyle(fontSize: 10, color: subtitleColor)),
        ],
      ),
    );
  }
}
