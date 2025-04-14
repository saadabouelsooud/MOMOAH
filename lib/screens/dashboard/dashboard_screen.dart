import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/strings.dart';
import '../../widgets/common/_tab_chip.dart';
import '../../widgets/common/_task_card.dart';
import '../../widgets/dashboard/_project_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FadeTransition(
        opacity: _controller,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.grid_view_rounded, size: 28),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/avatar.png')),
                ],
              ),
              const SizedBox(height: 24),
              Text(AppStrings.dashboardDashboard,
                  style: GoogleFonts.nunitoSans(
                      fontSize: 36, fontWeight: FontWeight.w700)),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(
                    child: ProjectCard(
                      title: AppStrings.dashboardProjectCard1Title,
                      color: Color(0xFFFFD54F),
                      members: ['a1', 'a2', 'a3', 'a4'],
                      tasks: 8,
                      image: 'assets/vector_yellow.png',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProjectCard(
                      title: AppStrings.dashboardProjectCard2Title,
                      color: Color(0xFF81D4FA),
                      members: ['a1', 'a2', 'a3'],
                      tasks: 12,
                      image: 'assets/vector_blue.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(AppStrings.dashboardAllTasks,
                  style: GoogleFonts.nunitoSans(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabChip(label: AppStrings.tabChipAll, selected: true),
                  // Using string from AppStrings
                  TabChip(label: AppStrings.tabChipToDo),
                  // Using string from AppStrings
                  TabChip(label: AppStrings.tabChipOngoing),
                  // Using string from AppStrings
                  TabChip(label: AppStrings.tabChipDone),
                  // Using string from AppStrings
                ],
              ),
              const SizedBox(height: 20),
              const TaskCard(
                title: AppStrings.dashboardTaskCard1Subtitle,
                subtitle: AppStrings.dashboardProjectCard1Title,
                due: AppStrings.dashboardDueTomorrow,
                status: AppStrings.dashboardTaskStatus,
                color: Color(0xFFFFF3E0),
                statusColor: Color(0xFFFFB300),
              ),
              const SizedBox(height: 12),
              const TaskCard(
                title: AppStrings.dashboardTaskCard2Subtitle,
                subtitle: AppStrings.dashboardProjectCard2Title,
                due: '١٢ شعبان ١٤٤٦هـ',
                status: AppStrings.dashboardDone,
                color: Color(0xFFE1F5FE),
                statusColor: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
