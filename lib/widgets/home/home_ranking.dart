import 'package:flutter/material.dart';

class HomeRanking extends StatelessWidget {
  const HomeRanking({super.key});

  static const _rankings = [
    {'rank': 1, 'name': '월드코인', 'nameEn': 'Worldcoin', 'change': null},
    {'rank': 2, 'name': '스토리', 'nameEn': 'Story', 'change': null},
    {'rank': 3, 'name': '쑨', 'nameEn': 'SOON', 'change': null},
    {'rank': 4, 'name': '드리프트', 'nameEn': 'Drift', 'change': null},
    {'rank': 5, 'name': '레이븐코인', 'nameEn': 'Ravencoin', 'change': null},
    {'rank': 6, 'name': '램버드', 'nameEn': 'Lambord', 'change': -1},
    {'rank': 7, 'name': '서킷', 'nameEn': 'Circuit', 'change': -2},
    {'rank': 8, 'name': '스파크', 'nameEn': 'Spark', 'change': 8},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('월간 검색 순위', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 2),
              Text('업비트·빗썸 2025 상장·국내 포털사이트 검색 기준', style: TextStyle(fontSize: 11, color: Colors.grey[500])),
            ],
          ),
        ),
        const SizedBox(height: 8),
        ..._rankings.map((item) => _RankItem(item: item)),
        Center(
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('더보기', style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey[600], size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _RankItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const _RankItem({required this.item});

  @override
  Widget build(BuildContext context) {
    final change = item['change'] as int?;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            child: Text('${item['rank']}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
          ),
          const SizedBox(width: 12),
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: const Icon(Icons.currency_bitcoin, size: 18, color: Colors.grey),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['name'] as String, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                Text(item['nameEn'] as String, style: TextStyle(fontSize: 11, color: Colors.grey[500])),
              ],
            ),
          ),
          if (change != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: change > 0 ? Colors.red[50] : Colors.blue[50],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    change > 0 ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: change > 0 ? Colors.red : Colors.blue,
                    size: 14,
                  ),
                  Text(
                    '${change.abs()}',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: change > 0 ? Colors.red : Colors.blue),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
