import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pie_chart_cubit.freezed.dart';
part 'pie_chart_state.dart';

class PieChartCubit extends Cubit<PieChartState> {
  PieChartCubit() : super(const PieChartState.initial());
  init() async {
    final services = await FirebaseFirestore.instance
        .collection('services')
        .get()
        .then((query) => query.docs)
        .then(
            (value) => value.map((snapshot) => Service.fromSnapshot(snapshot)));
    final bookingsCount = await FirebaseFirestore.instance
        .collection('bookings')
        .get()
        .then((value) => value.size);
    final chartItems = await Future.wait(services.map((service) async {
      print(bookingsCount);
      print(service.id);
      final bookings = await FirebaseFirestore.instance
          .collection('bookings')
          .where(
            'serviceRef',
            isEqualTo: FirebaseFirestore.instance.doc('services/${service.id}'),
          )
          .get()
          .then((value) => value.size);
      return PieChartSectionData(
          title: "${service.title} ${(bookings / bookingsCount) * 100}%",
          value: (bookings / bookingsCount) * 100,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)]);
    }));
    emit(PieChartState.loaded(data: chartItems, toucedIndex: -1));
    print(chartItems);
  }
}
