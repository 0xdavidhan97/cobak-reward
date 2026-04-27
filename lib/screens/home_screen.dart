import 'package:flutter/material.dart';
import '../widgets/cobak_app_bar.dart';
import '../widgets/home/home_banner.dart';
import '../widgets/home/home_stats_row.dart';
import '../widgets/home/home_service_icons.dart';
import '../widgets/home/home_ranking.dart';
import '../widgets/home/home_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CobakAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HomeBanner(),
                    SizedBox(height: 12),
                    HomeStatsRow(),
                    SizedBox(height: 20),
                    HomeServiceIcons(),
                    SizedBox(height: 20),
                    HomeRanking(),
                    SizedBox(height: 20),
                    HomeNews(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
