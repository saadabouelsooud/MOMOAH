import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common/_tab_chip.dart';
import '../../widgets/common/_task_card.dart';
import 'package:go_router/go_router.dart';
import '../../utils/strings.dart'; // Import the strings file

class DashboardDetailsScreen extends StatelessWidget {
  const DashboardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () =>
              context.canPop() ? context.pop() : context.go('/dashboard'),
        ),
        title: Text(
          AppStrings.dashboardProjectCard1Title,
          style: GoogleFonts.nunitoSans(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.dashboardDetailsTodayTask,
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/vector_yellow.png'),
                        fit: BoxFit
                            .fill, // or BoxFit.fill / BoxFit.contain / BoxFit.fitWidth etc.
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                AppStrings.dashboardDetailsOngoing,
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          AppStrings.dashboardTaskCard11Subtitle,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 14,
                                backgroundImage: AssetImage('assets/a1.jpg')),
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 14,
                                backgroundImage: AssetImage('assets/a2.jpg')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F4F6),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.dashboardDetailsMarch10,
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            ...[
                              'المرحلة الاولي',
                              'المرحلة الثانية',
                              'المرحلة الثالثة'
                            ]
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                            e == 'المرحلة الثالثة'
                                                ? Icons
                                                    .check_box_outline_blank_rounded
                                                : Icons.check_box_rounded,
                                            size: 16),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            e,
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.dashboardDetailsSubtask,
                            style: GoogleFonts.nunitoSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              AppStrings.dashboardDetailsOtherTasks,
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TabChip(label: AppStrings.tabAllWithCount, selected: true),
                TabChip(label: AppStrings.tabToDo),
                TabChip(label: AppStrings.tabOngoing),
                TabChip(label: AppStrings.tabDone),
              ],
            ),
            const SizedBox(height: 16),
            const TaskCard(
              title: AppStrings.dashboardTaskCardTask1,
              subtitle: AppStrings.dashboardProjectCard1Title,
              due: AppStrings.dashboardTaskCard1Due,
              status: AppStrings.dashboardTaskCard1Status,
              color: Color(0xFFFFF3E0),
              statusColor: Color(0xFFFFB300),
            ),
            const SizedBox(height: 12),
            const TaskCard(
              title: AppStrings.dashboardTaskCardTask2,
              subtitle: AppStrings.dashboardProjectCard1Title,
              due: AppStrings.dashboardTaskCard2Due,
              status: AppStrings.dashboardTaskCard2Status,
              color: Color(0xFFFFF3E0),
              statusColor: Color(0xFFFFB300),
            ),
            const SizedBox(height: 12),
            const TaskCard(
              title: AppStrings.dashboardTaskCardTask3,
              subtitle: AppStrings.dashboardProjectCard1Title,
              due: AppStrings.dashboardTaskCard3Due,
              status: AppStrings.dashboardTaskCard3Status,
              color: Color(0xFFE1F5FE),
              statusColor: Colors.lightBlue,
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                ),
                onPressed: () {},
                child: Text(
                  AppStrings.dashboardDetailsMarkAsDone,
                  style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
