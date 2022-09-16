// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateFundRequest _$$_CreateFundRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateFundRequest(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      sum: (json['sum'] as num?)?.toDouble(),
      isAttachmentsAccepted: json['isAttachmentsAccepted'] as bool,
      fundRequestSourceIds: (json['fundRequestSourcesIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_CreateFundRequestToJson(
        _$_CreateFundRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'sum': instance.sum,
      'isAttachmentsAccepted': instance.isAttachmentsAccepted,
      'fundRequestSourcesIds': instance.fundRequestSourceIds,
    };

_$_CreateFundRequestSource _$$_CreateFundRequestSourceFromJson(
        Map<String, dynamic> json) =>
    _$_CreateFundRequestSource(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CreateFundRequestSourceToJson(
        _$_CreateFundRequestSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
