
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarChartSection extends StatelessWidget {
  const BarChartSection();

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        groupsSpace: 20,
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                const days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
                return Text(days[value.toInt() % days.length], style: GoogleFonts.nunitoSans(fontSize: 10));
              },
            ),
          ),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: [
          _buildBarGroup(0, 5, 10, 8),
          _buildBarGroup(1, 25, 30, 18),
          _buildBarGroup(2, 15, 25, 14),
          _buildBarGroup(3, 20, 18, 25),
          _buildBarGroup(4, 10, 12, 20),
          _buildBarGroup(5, 18, 14, 10),
          _buildBarGroup(6, 10, 6, 5),
        ],
      ),
    );
  }

  BarChartGroupData _buildBarGroup(int x, double p, double r, double c) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(toY: r, color: Color(0xFF07706D), width: 6),
      BarChartRodData(toY: p, color: Color(0xFFB1313D), width: 6),
      BarChartRodData(toY: c, color: Color(0xFF8AB729), width: 6),
    ]);
  }
}
