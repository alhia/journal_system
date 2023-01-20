import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_cubit.freezed.dart';
part 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesState.initial());

  void init() async {
    final services = await FirebaseFirestore.instance
        .collection('services')
        .get()
        .then((snapshot) => snapshot.docs)
        .then((docs) => docs.map(Service.fromSnapshot).toList());
    emit(ServicesState.loaded(services));
  }
}
