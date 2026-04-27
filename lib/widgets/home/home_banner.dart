import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.fromLTRB(20, 20, 12, 20),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '코박을',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              Text(
                '안전하게',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
            child: const Icon(Icons.security, size: 40, color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
