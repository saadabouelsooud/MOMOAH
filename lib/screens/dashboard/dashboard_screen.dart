
// DashboardScreen code from user input
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common/_tab_chip.dart';
import '../../widgets/common/_task_card.dart';
import '../../widgets/dashboard/_project_card.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with SingleTickerProviderStateMixin {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.grid_view_rounded, size: 28),
                  CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/avatar.jpg')),
                ],
              ),
              const SizedBox(height: 24),
              Text('Project', style: GoogleFonts.nunitoSans(fontSize: 36, fontWeight: FontWeight.w700)),
              Text('Dashboard (5)', style: GoogleFonts.nunitoSans(fontSize: 28, fontWeight: FontWeight.w500)),
              const SizedBox(height: 24),
              Row(
                children: const [
                  Expanded(
                    child: ProjectCard(
                      title: 'Hajime Illustration Projects',
                      color: Color(0xFFFFD54F),
                      members: ['A', 'B', 'C', 'D'],
                      tasks: 24,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProjectCard(
                      title: 'IKN Ministry Projects',
                      color: Color(0xFF81D4FA),
                      members: ['E', 'F', 'G'],
                      tasks: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text('All Tasks', style: GoogleFonts.nunitoSans(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TabChip(label: 'All', selected: true),
                  TabChip(label: 'To Do'),
                  TabChip(label: 'Ongoing'),
                  TabChip(label: 'Done'),
                ],
              ),
              const SizedBox(height: 20),
              const TaskCard(
                title: 'Hero Section Illustration',
                subtitle: 'Hajime Illustration Projects',
                due: 'Due Tomorrow',
                status: 'Ongoing',
                color: Color(0xFFFFF3E0),
                statusColor: Color(0xFFFFB300),
              ),
              const SizedBox(height: 12),
              const TaskCard(
                title: 'Education Site Homepage',
                subtitle: 'IKN Ministry UI/UX Projects',
                due: '21 February 2024',
                status: 'Done',
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
