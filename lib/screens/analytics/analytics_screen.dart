
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/analytics/_status_card.dart';
import '../../widgets/analytics/_footer_stat.dart';
import '../../widgets/analytics/_bar_chart_section.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Dashboard',
            style: GoogleFonts.nunitoSans(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
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
                  decoration: const BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
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
                  Expanded(child: StatusCard(count: 24, label: 'In Progress', color: Color(0xFFB3B7FB))),
                  SizedBox(width: 12),
                  Expanded(child: StatusCard(count: 56, label: 'In Review', color: Color(0xFFF1B8F5))),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: const [
                  Expanded(child: StatusCard(count: 16, label: 'On Hold', color: Color(0xFFFFD880))),
                  SizedBox(width: 12),
                  Expanded(child: StatusCard(count: 45, label: 'Completed', color: Color(0xFF9CE9A7))),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Text('Project Statistics', style: GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Icon(Icons.more_vert, color: Colors.black),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(height: 200, child: BarChartSection()),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    child: FooterStat(
                      title: 'Total working hour',
                      value: '50:25:06',
                      change: '+34%',
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: FooterStat(
                      title: 'Total task activity',
                      value: '125 Task',
                      change: '-50%',
                      color: Colors.purple,
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
