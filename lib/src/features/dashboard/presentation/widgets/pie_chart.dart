import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/pie_chart_cubit.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PieChartCubit()..init(),
      child: BlocBuilder<PieChartCubit, PieChartState>(
        builder: (context, state) {
          return state.maybeMap(
              loaded: (loadedState) => SizedBox(
                    width: 800,
                    height: 800,
                    child: PieChart(
                      PieChartData(
                          pieTouchData: PieTouchData(
                              touchCallback:
                                  (FlTouchEvent event, pieTouchResponse) {}),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          sectionsSpace: 0,
                          centerSpaceRadius: 40,
                          sections: loadedState.data),
                    ),
                  ),
              orElse: () => Container());
        },
      ),
    );
  }
}
