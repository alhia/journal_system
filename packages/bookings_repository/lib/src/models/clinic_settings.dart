import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_settings.freezed.dart';
part 'clinic_settings.g.dart';

@freezed
class ClinicSettings with _$ClinicSettings {
  static final ref = FirebaseFirestore.instance
      .collection('clinic-settings')
      .withConverter<ClinicSettings>(
        fromFirestore: (snapshot, _) {
          return ClinicSettings.fromSnapshot(snapshot);
        },
        toFirestore: (clinicSetting, _) => clinicSetting.toJson(),
      );

  const factory ClinicSettings({
    String? id,
    required int interval,
    required int bookingsPerSlot,
    required OpenDays openDays,
  }) = _ClinicSettings;

  factory ClinicSettings.fromJson(Map<String, dynamic> source) =>
      _$ClinicSettingsFromJson(source);
  factory ClinicSettings.create() => ClinicSettings(
      interval: 15, bookingsPerSlot: 2, openDays: OpenDays.create());
  factory ClinicSettings.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;

    return ClinicSettings.fromJson(data).copyWith(id: snapshot.id);
  }
}

/* @freezed
class ClinicSettingsOperations with _$ClinicSettingsOperations {
  const factory ClinicSettingsOperations.add(ClinicSettings clinic) = Add;
  const factory ClinicSettingsOperations.update(ClinicSettings clinic) = Update;
  const factory ClinicSettingsOperations.delete(ClinicSettings clinic) = Delete;
} */

@freezed
class OpenDays with _$OpenDays {
  const factory OpenDays({
    required OpenDay monday,
    required OpenDay tuesday,
    required OpenDay wednesday,
    required OpenDay thursday,
    required OpenDay friday,
    required OpenDay saturday,
    required OpenDay sunday,
  }) = _OpenDays;
  factory OpenDays.fromJson(Map<String, dynamic> json) =>
      _$OpenDaysFromJson(json);
  factory OpenDays.create() => OpenDays(
        monday: OpenDay.create(),
        tuesday: OpenDay.create(),
        wednesday: OpenDay.create(),
        thursday: OpenDay.create(),
        friday: OpenDay.create(),
        saturday: OpenDay.create(),
        sunday: OpenDay.create(),
      );
}

@freezed
class OpenDay with _$OpenDay {
  const factory OpenDay({required OpenHour start, required OpenHour end}) =
      _OpenDay;

  factory OpenDay.create() => const OpenDay(
      start: OpenHour(hour: 8, minute: 30),
      end: OpenHour(hour: 18, minute: 00));
  factory OpenDay.fromJson(Map<String, dynamic> json) =>
      _$OpenDayFromJson(json);
}

@freezed
class OpenHour with _$OpenHour {
  const factory OpenHour({required int hour, required int minute}) = _OpenHour;

  factory OpenHour.fromJson(Map<String, dynamic> json) =>
      _$OpenHourFromJson(json);
}
