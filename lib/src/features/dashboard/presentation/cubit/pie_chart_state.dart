part of 'pie_chart_cubit.dart';

@freezed
class PieChartState with _$PieChartState {
  const factory PieChartState.initial() = _Initial;
  const factory PieChartState.loaded(
      {required List<PieChartSectionData> data,
      required int toucedIndex}) = _Loaded;
}
