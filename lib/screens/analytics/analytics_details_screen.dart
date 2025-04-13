import 'package:flutter/material.dart';
import '../../widgets/analytics/_analytics_task_card.dart';
import 'package:go_router/go_router.dart';

class AnalyticsDetailsScreen extends StatelessWidget {
  const AnalyticsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () =>
              context.canPop() ? context.pop() : context.go('/analytics'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 16,
        title: Row(
          children: const [
            Icon(Icons.view_agenda_rounded, color: Colors.purple),
            SizedBox(width: 10),
            Text('Task List',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        actions: const [
          // Icon(Icons.arrow_forward),
          SizedBox(width: 8),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                _chip("Complete", true),
                _chip("To Do", false),
                _chip("In Review", false),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                AnalyticsTaskCard(
                  title: 'Dashboard design for admin',
                  labels: ['High', 'On Track'],
                  date: '14 Oct 2022',
                  links: 5,
                  comments: 5,
                  avatarCount: 2,
                ),
                AnalyticsTaskCard(
                  title: 'Konom web application',
                  labels: ['Low', 'Meeting'],
                  date: '14 Nov 2022',
                  links: 2,
                  comments: 4,
                  avatarCount: 2,
                ),
                AnalyticsTaskCard(
                  title: 'Research and development',
                  labels: ['Medium', 'At Risk'],
                  date: '14 Oct 2022',
                  links: 6,
                  comments: 2,
                  avatarCount: 2,
                  backgroundColor: Color(0xFF9CE9A7),
                ),
                AnalyticsTaskCard(
                  title: 'Event booking application',
                  labels: ['Medium', 'Meeting'],
                  date: '14 Oct 2022',
                  links: 5,
                  comments: 5,
                  avatarCount: 2,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple.shade200,
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }

  Widget _chip(String label, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: selected ? Colors.white : Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "5",
              style: TextStyle(
                color: selected ? Colors.black : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
