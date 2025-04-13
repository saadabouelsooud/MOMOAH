
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final Color color;
  final List<String> members;
  final int tasks;

  const ProjectCard({
    required this.title,
    required this.color,
    required this.members,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/dashboard/details'),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.85),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: color.withOpacity(0.4), blurRadius: 12, offset: Offset(0, 6))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ongoing', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(title, style: GoogleFonts.nunitoSans(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('$tasks Active Tasks', style: GoogleFonts.nunitoSans()),
            const SizedBox(height: 12),
            Row(
              children: members
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: CircleAvatar(radius: 14, child: Text(e)),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
