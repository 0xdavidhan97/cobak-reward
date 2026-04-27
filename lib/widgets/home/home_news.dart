import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  static const _newsTitles = [
    '4월 월별 점유율 30%대 북 "빗썸 상승·서울 고교등 통합"...',
    '이더리움, 한 달간 20% 폭등...2,500달러 근처 돌진',
    '마이피아 코프로덕트 헤럴 연군 0.5%...500 WTI 96',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('자금 주목할 뉴스', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text('전체보기', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: _newsTitles.length,
            itemBuilder: (context, index) {
              return Container(
                width: 190,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 95,
                      color: Colors.grey[200],
                      child: Center(child: Icon(Icons.image_outlined, size: 36, color: Colors.grey[400])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        _newsTitles[index % _newsTitles.length],
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black87, height: 1.4),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
