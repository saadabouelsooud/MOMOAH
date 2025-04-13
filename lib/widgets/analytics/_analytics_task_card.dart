
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsTaskCard extends StatelessWidget {
  final String title;
  final List<String> labels;
  final String date;
  final int links;
  final int comments;
  final int avatarCount;
  final Color? backgroundColor;

  const AnalyticsTaskCard({
    required this.title,
    required this.labels,
    required this.date,
    required this.links,
    required this.comments,
    required this.avatarCount,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 10),

          // Chips
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: labels.map((label) {
              Color bgColor = Colors.grey.shade300;
              if (label == 'High') bgColor = Colors.red.shade200;
              if (label == 'Low') bgColor = Colors.green.shade200;
              if (label == 'Medium') bgColor = Colors.orange.shade200;
              if (label == 'On Track') bgColor = Colors.purple.shade200;
              if (label == 'At Risk') bgColor = Colors.red.shade400;
              if (label == 'Meeting') bgColor = Colors.blue.shade200;

              return Chip(
                label: Text(label, style: GoogleFonts.nunitoSans(fontSize: 12)),
                backgroundColor: bgColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.symmetric(horizontal: 6),
              );
            }).toList(),
          ),

          const SizedBox(height: 12),

          // Bottom Row
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 14),
              const SizedBox(width: 4),
              Text(date, style: GoogleFonts.nunitoSans(fontSize: 13)),

              const Spacer(),

              Row(
                children: [
                  const Icon(Icons.link, size: 14),
                  const SizedBox(width: 4),
                  Text('$links', style: GoogleFonts.nunitoSans(fontSize: 13)),
                  const SizedBox(width: 12),
                  const Icon(Icons.comment, size: 14),
                  const SizedBox(width: 4),
                  Text('$comments', style: GoogleFonts.nunitoSans(fontSize: 13)),
                ],
              ),
              const SizedBox(width: 8),

              Row(
                children: List.generate(avatarCount, (i) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue.shade400,
                      child: const Icon(Icons.person, size: 14, color: Colors.white),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
