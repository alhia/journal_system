// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClinicSettings _$$_ClinicSettingsFromJson(Map<String, dynamic> json) =>
    _$_ClinicSettings(
      id: json['id'] as String?,
      interval: json['interval'] as int,
      bookingsPerSlot: json['bookingsPerSlot'] as int,
      openDays: OpenDays.fromJson(json['openDays'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClinicSettingsToJson(_$_ClinicSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'interval': instance.interval,
      'bookingsPerSlot': instance.bookingsPerSlot,
      'openDays': instance.openDays.toJson(),
    };

_$_OpenDays _$$_OpenDaysFromJson(Map<String, dynamic> json) => _$_OpenDays(
      monday: OpenDay.fromJson(json['monday'] as Map<String, dynamic>),
      tuesday: OpenDay.fromJson(json['tuesday'] as Map<String, dynamic>),
      wednesday: OpenDay.fromJson(json['wednesday'] as Map<String, dynamic>),
      thursday: OpenDay.fromJson(json['thursday'] as Map<String, dynamic>),
      friday: OpenDay.fromJson(json['friday'] as Map<String, dynamic>),
      saturday: OpenDay.fromJson(json['saturday'] as Map<String, dynamic>),
      sunday: OpenDay.fromJson(json['sunday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenDaysToJson(_$_OpenDays instance) =>
    <String, dynamic>{
      'monday': instance.monday.toJson(),
      'tuesday': instance.tuesday.toJson(),
      'wednesday': instance.wednesday.toJson(),
      'thursday': instance.thursday.toJson(),
      'friday': instance.friday.toJson(),
      'saturday': instance.saturday.toJson(),
      'sunday': instance.sunday.toJson(),
    };

_$_OpenDay _$$_OpenDayFromJson(Map<String, dynamic> json) => _$_OpenDay(
      start: OpenHour.fromJson(json['start'] as Map<String, dynamic>),
      end: OpenHour.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenDayToJson(_$_OpenDay instance) =>
    <String, dynamic>{
      'start': instance.start.toJson(),
      'end': instance.end.toJson(),
    };

_$_OpenHour _$$_OpenHourFromJson(Map<String, dynamic> json) => _$_OpenHour(
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );

Map<String, dynamic> _$$_OpenHourToJson(_$_OpenHour instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
    };
