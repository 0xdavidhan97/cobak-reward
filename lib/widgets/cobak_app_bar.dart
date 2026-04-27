import 'package:flutter/material.dart';

class CobakAppBar extends StatelessWidget {
  const CobakAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/images/cobak_logo.png',
            width: 36,
            height: 36,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
          ),
          const SizedBox(width: 4),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black87),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
          ),
          const SizedBox(width: 4),
          IconButton(
            icon: const Icon(Icons.account_balance_wallet_outlined, color: Colors.black87),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
          ),
          const SizedBox(width: 4),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey[300],
            child: const Icon(Icons.person, size: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
