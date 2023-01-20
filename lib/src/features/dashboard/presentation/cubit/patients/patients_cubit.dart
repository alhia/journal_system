import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'patients_cubit.freezed.dart';
part 'patients_state.dart';

class PatientsCubit extends Cubit<PatientsState> {
  final flyoutController = FlyoutController();

  PatientsCubit(this.bookingsRepository) : super(const PatientsState.initial());
  final BookingsRepository bookingsRepository;
  StreamSubscription? _bookingsSubscription;

  void load() {
    _bookingsSubscription?.cancel();
    _bookingsSubscription = bookingsRepository.bookings().listen((bookings) {
      emit(PatientsState.loaded(bookings));
    });
  }

  void setFilter(PatientsFilters filters) {
    state.mapOrNull(loaded: (loadedState) {
      emit(loadedState.copyWith(filters: filters));
    });
    state.mapOrNull(loaded: (loadedState) {});
  }

  void selectBooking(String rid) {
    state.mapOrNull(loaded: (loadedState) {
      emit(
        loadedState.copyWith(
          selectedBookings: loadedState.selectedBookings.contains(rid)
              ? loadedState.selectedBookings
                  .where((element) => element != rid)
                  .toList()
              : [...loadedState.selectedBookings, rid],
        ),
      );
    });
  }

  void onPageChanged(int value) {}

  void onQueryChange(String query) async {
    final client = Client();
    final request = await client.get(
        Uri.parse(
            "https://meili.curativum.se/indexes/bookings/search?q=$query"),
        headers: {'Authorization': 'Bearer ODAxZTZlODQwNzcwMjZkODVjMzBhMjc0'});
    print(request.statusCode);
    if (request.statusCode == 200) {
      final results = (jsonDecode(request.body)["hits"] as List)
          .map((e) => SearchModel.fromMap(e))
          .toList();
      state.mapOrNull(
          loaded: (loadedState) =>
              emit(loadedState.copyWith(searchResult: results)));
    }
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
