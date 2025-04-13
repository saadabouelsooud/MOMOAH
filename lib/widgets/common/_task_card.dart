
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String due;
  final String status;
  final Color color;
  final Color statusColor;

  const TaskCard({
    required this.title,
    required this.subtitle,
    required this.due,
    required this.status,
    required this.color,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Opening task: $title')),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.15), blurRadius: 8, offset: Offset(0, 4))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.nunitoSans(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(subtitle, style: GoogleFonts.nunitoSans()),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(due, style: GoogleFonts.nunitoSans(fontSize: 13)),
                Chip(
                  label: Text(status, style: GoogleFonts.nunitoSans(color: Colors.white)),
                  backgroundColor: statusColor,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}