
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class StatusCard extends StatelessWidget {
  final int count;
  final String label;
  final Color color;

  const StatusCard({
    required this.count,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/analytics/details'),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$count', style: GoogleFonts.nunitoSans(fontSize: 22, fontWeight: FontWeight.bold)),
                Text(label, style: GoogleFonts.nunitoSans()),
              ],
            ),
            const Positioned(
              left: 0,
              top: 0,
              child: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
