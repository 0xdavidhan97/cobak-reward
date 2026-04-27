import 'package:flutter/material.dart';

class HomeServiceIcons extends StatelessWidget {
  const HomeServiceIcons({super.key});

  static const _services = [
    {'icon': Icons.live_tv, 'label': '라이브', 'color': Color(0xFFFF3B30)},
    {'icon': Icons.flash_on, 'label': '속보', 'color': Color(0xFFFF9500)},
    {'icon': Icons.flag_outlined, 'label': '미션', 'color': Color(0xFF34C759)},
    {'icon': Icons.show_chart, 'label': '시세조회', 'color': Color(0xFF007AFF)},
    {'icon': Icons.build_outlined, 'label': '툴박스', 'color': Color(0xFF5856D6)},
    {'icon': Icons.business_center_outlined, 'label': '비즈니스', 'color': Color(0xFF00C7BE)},
    {'icon': Icons.emoji_events_outlined, 'label': '랭킹', 'color': Color(0xFFFFCC00)},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('주요 서비스', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 76,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: _services.length,
            itemBuilder: (context, index) {
              final service = _services[index];
              final color = service['color'] as Color;
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.12),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(service['icon'] as IconData, color: color, size: 24),
                    ),
                    const SizedBox(height: 6),
                    Text(service['label'] as String, style: const TextStyle(fontSize: 11, color: Colors.black87)),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
