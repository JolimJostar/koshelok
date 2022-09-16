// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProjectDetails _$$_CreateProjectDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProjectDetails(
      name: json['name'] as String,
      description: json['description'] as String,
      projectStatus: $enumDecode(_$ProjectStatusEnumMap, json['status']),
      managerComment: json['managerComment'] as String,
      directionIds:
          (json['directions'] as List<dynamic>).map((e) => e as int).toList(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      legalPerson: json['legalPerson'] == null
          ? null
          : LegalPerson.fromJson(json['legalPerson'] as Map<String, dynamic>),
      gvs: (json['gvs'] as List<dynamic>).map((e) => e as int).toList(),
      expertiseGvs: $enumDecode(_$ExpertiseGvsEnumMap, json['expertiseGvs']),
      pilotingStatus:
          $enumDecode(_$PilotingStatusEnumMap, json['pilotingStatus']),
      hospitalsIds:
          (json['hospitals'] as List<dynamic>).map((e) => e as int).toList(),
      managerId: json['managerId'] as int,
      priority: $enumDecode(_$PrioritizationEnumMap, json['priority']),
      hasRegisterCertificate: json['hasRegisterCertificate'] as bool,
      resident: json['resident'] == null
          ? null
          : Resident.fromJson(json['resident'] as Map<String, dynamic>),
      paymentForDoctors: (json['paymentForDoctors'] as List<dynamic>?)
          ?.map((e) => PaymentForDoctor.fromJson(e as Map<String, dynamic>))
          .toList(),
      fundRequestList: (json['fundRequestList'] as List<dynamic>?)
          ?.map((e) => CreateFundRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      emiasStatus:
          $enumDecodeNullable(_$EmiasStateEnumMap, json['emiasIntegration']),
      purchaseMHD:
          $enumDecodeNullable(_$PurchaseMhdEnumMap, json['purchaseMhd']),
    );

Map<String, dynamic> _$$_CreateProjectDetailsToJson(
        _$_CreateProjectDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'status': _$ProjectStatusEnumMap[instance.projectStatus]!,
      'managerComment': instance.managerComment,
      'directions': instance.directionIds,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'legalPerson': instance.legalPerson?.toJson(),
      'gvs': instance.gvs,
      'expertiseGvs': _$ExpertiseGvsEnumMap[instance.expertiseGvs]!,
      'pilotingStatus': _$PilotingStatusEnumMap[instance.pilotingStatus]!,
      'hospitals': instance.hospitalsIds,
      'managerId': instance.managerId,
      'priority': _$PrioritizationEnumMap[instance.priority]!,
      'hasRegisterCertificate': instance.hasRegisterCertificate,
      'resident': instance.resident?.toJson(),
      'paymentForDoctors':
          instance.paymentForDoctors?.map((e) => e.toJson()).toList(),
      'fundRequestList':
          instance.fundRequestList?.map((e) => e.toJson()).toList(),
      'emiasIntegration': _$EmiasStateEnumMap[instance.emiasStatus],
      'purchaseMhd': _$PurchaseMhdEnumMap[instance.purchaseMHD],
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.active: 1,
  ProjectStatus.frozen: 2,
  ProjectStatus.draft: 3,
};

const _$ExpertiseGvsEnumMap = {
  ExpertiseGvs.notSent: 0,
  ExpertiseGvs.waiting: 1,
  ExpertiseGvs.positive: 2,
  ExpertiseGvs.rework: 3,
  ExpertiseGvs.negative: 4,
};

const _$PilotingStatusEnumMap = {
  PilotingStatus.notPiloted: 0,
  PilotingStatus.active: 1,
  PilotingStatus.completed: 2,
};

const _$PrioritizationEnumMap = {
  Prioritization.high: 0,
  Prioritization.middle: 1,
  Prioritization.low: 2,
};

const _$EmiasStateEnumMap = {
  EmiasState.elaboration: 1,
  EmiasState.plan: 2,
  EmiasState.doneIntergration: 3,
};

const _$PurchaseMhdEnumMap = {
  PurchaseMhd.elaboration: 1,
  PurchaseMhd.plan: 2,
  PurchaseMhd.donePurchase: 3,
};
