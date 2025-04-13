
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common/_tab_chip.dart';
import '../../widgets/common/_task_card.dart';
import 'package:go_router/go_router.dart';

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
          onPressed: () => context.canPop() ? context.pop() : context.go('/dashboard'),
        ),
        title: Text('Hajime Illustration Projects',
            style: GoogleFonts.nunitoSans(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Task for today (1)',
                style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD54F),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text('Ongoing',
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text('Hero Section Illustration',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(height: 16),
                        Row(
                          children: const [
                            CircleAvatar(radius: 14, backgroundColor: Colors.white),
                            SizedBox(width: 8),
                            CircleAvatar(radius: 14, backgroundColor: Colors.white),
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
                            Text('10 March',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                            const SizedBox(height: 8),
                            ...['Conceptualization', 'Sketching and Ideas', 'Digital Rendering']
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.radio_button_unchecked, size: 16),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(e,
                                              style: GoogleFonts.nunitoSans(
                                                  fontSize: 14)),
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
                          child: Text('Subtask  •  2 out of 3',
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text('Other tasks',
                style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TabChip(label: 'All (23)', selected: true),
                TabChip(label: 'To Do'),
                TabChip(label: 'Ongoing'),
                TabChip(label: 'Done'),
              ],
            ),
            const SizedBox(height: 16),
            const TaskCard(
              title: 'Theme Development and Rese...',
              subtitle: 'Hajime Illustration Projects',
              due: 'Due Tomorrow',
              status: 'Ongoing',
              color: Color(0xFFFFF3E0),
              statusColor: Color(0xFFFFB300),
            ),
            const SizedBox(height: 12),
            const TaskCard(
              title: 'Documentation and Delivery',
              subtitle: 'Hajime Illustration Projects',
              due: 'Due Tomorrow',
              status: 'Ongoing',
              color: Color(0xFFFFF3E0),
              statusColor: Color(0xFFFFB300),
            ),
            const SizedBox(height: 12),
            const TaskCard(
              title: 'Illustration Series Creation',
              subtitle: 'Hajime Illustration Projects',
              due: '',
              status: 'Done',
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
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                ),
                onPressed: () {},
                child: Text('Mark as Done',
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
