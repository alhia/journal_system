// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['id'] as String?,
      title: json['title'] as String,
      type: $enumDecode(_$TypeEnumMap, json['type']),
      price: json['price'] as int,
      minutes: json['minutes'] as int,
      ridPrefix: json['ridPrefix'] as String,
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$TypeEnumMap[instance.type],
      'price': instance.price,
      'minutes': instance.minutes,
      'ridPrefix': instance.ridPrefix,
    };

const _$TypeEnumMap = {
  Type.pcr: 'pcr',
  Type.antigen: 'antigen',
};
