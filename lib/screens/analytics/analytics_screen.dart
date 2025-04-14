import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/analytics/_status_card.dart';
import '../../widgets/analytics/_footer_stat.dart';
import '../../widgets/analytics/_bar_chart_section.dart';
import '../../utils/strings.dart'; // Import your strings

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppStrings.analyticsTitle,
          style: GoogleFonts.nunitoSans(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  child: const Center(
                    child: Text('2', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: StatusCard(
                      count: 24,
                      label: AppStrings.analyticsStatusInProgress,
                      color: Color(0xFFB3B7FB),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatusCard(
                      count: 56,
                      label: AppStrings.analyticsStatusInReview,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: const [
                  Expanded(
                    child: StatusCard(
                      count: 16,
                      label: AppStrings.analyticsStatusOnHold,
                      color: Color(0xFFFFD880),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatusCard(
                      count: 45,
                      label: AppStrings.analyticsStatusCompleted,
                      color: Color(0xFF9CE9A7),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    AppStrings.analyticsProjectStats,
                    style: GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert, color: Colors.black),
                ],
              ),
              const SizedBox(height: 12),
              const SizedBox(height: 200, child: BarChartSection()),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    child: FooterStat(
                      title: AppStrings.analyticsTotalWorkHours,
                      value: '50:25:06',
                      change: '+34%',
                      color: Color(0xFF07706D),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: FooterStat(
                      title: AppStrings.analyticsTotalTaskActivity,
                      value: 'مهمة رقم 20',
                      change: '-50%',
                      color: Color(0xFFB1313D),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
