import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/booking_calendar_widget.dart';
import '../widgets/pie_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1.0,
        child: Wrap(
          children: const [
            FractionallySizedBox(widthFactor: 0.5, child: CalendarWidget()),
            FractionallySizedBox(widthFactor: 0.5, child: PieChartWidget()),
          ],
        ),
      ),
    );
  }
}
