import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/strings.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final List<String> members;
  final int tasks;

  const ProjectCard({
    required this.title,
    required this.color,
    required this.members,
    required this.tasks,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(image);
    int random = Random().nextInt(5) + 1;
    return GestureDetector(
      onTap: () => context.go('/dashboard/details'),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: assetImage,
            fit: BoxFit
                .fill, // or BoxFit.fill / BoxFit.contain / BoxFit.fitWidth etc.
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: BorderRadius.circular(8), // Rounded rectangle
              ),
              child: Text(AppStrings.tabChipOngoing,
                  style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 12),
            Text(title,
                style: GoogleFonts.nunitoSans(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text('${AppStrings.card_active_task} $tasks ',
                style: GoogleFonts.nunitoSans()),
            const SizedBox(height: 12),
            Row(
              children: members
                  .map((e) => Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 14,
                            backgroundImage: AssetImage('assets/$e.jpg')),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
