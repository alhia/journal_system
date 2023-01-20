// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Clinic _$$_ClinicFromJson(Map<String, dynamic> json) => _$_Clinic(
      id: json['id'] as String?,
      name: json['name'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      servicesRef: firestoreDocRefListFromJson(json['servicesRef'] as List),
      settingsRef: firestoreDocRefFromJson(json['settingsRef']),
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_ClinicToJson(_$_Clinic instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'servicesRef': firestoreDocRefToJson(instance.servicesRef),
      'settingsRef': firestoreDocRefToJson(instance.settingsRef),
      'zip': instance.zip,
    };
