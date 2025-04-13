
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterStat extends StatelessWidget {
  final String title;
  final String value;
  final String change;
  final Color color;

  const FooterStat({
    required this.title,
    required this.value,
    required this.change,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 64),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: GoogleFonts.nunitoSans(fontSize: 12)),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(value, style: GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(width: 6),
              Text(change, style: GoogleFonts.nunitoSans(color: color, fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
