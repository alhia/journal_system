import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final BookingsRepository bookingsRepository;
  DashboardCubit(this.bookingsRepository)
      : super(const DashboardState.initial());
  void init() => emit(const DashboardState.loaded());
  void onQueryChange(String query) async {
    final client = Client();
    final request = await client.get(
        Uri.parse(
            "https://meili.curativum.se/indexes/bookings/search?q=$query"),
        headers: {'Authorization': 'Bearer ODAxZTZlODQwNzcwMjZkODVjMzBhMjc0'});
    if (request.statusCode == 200) {
      final results = (jsonDecode(request.body)["hits"] as List)
          .map((e) => SearchModel.fromMap(e))
          .toList();
      print(results.length);
      state.mapOrNull(
          loaded: (loadedState) =>
              emit(loadedState.copyWith(searchResult: results)));
    }
  }

  void selectBooking(String rid) {
    emit(DashboardState.showPatient(selectedRid: rid));
  }
}

class SearchModel {
  final String firstName;
  final String lastName;
  final String rid;
  SearchModel({
    required this.firstName,
    required this.lastName,
    required this.rid,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'rid': rid,
    };
  }

  factory SearchModel.fromMap(Map<String, dynamic> map) {
    return SearchModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      rid: map['rid'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchModel.fromJson(String source) =>
      SearchModel.fromMap(json.decode(source));
}
