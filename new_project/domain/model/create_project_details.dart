import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';
import 'package:medtech/feature/new_project/domain/model/task.dart';
import 'package:medtech/feature/new_project/ui/contract.dart';
import 'package:medtech/feature/project/domain/legal_person.dart';
import 'package:medtech/feature/project/domain/payment_for_doctor.dart';
import 'package:medtech/feature/project/domain/project_details.dart';
import 'package:medtech/feature/project/domain/resident.dart';

part 'create_project_details.freezed.dart';
part 'create_project_details.g.dart';

@freezed
class CreateProjectDetails with _$CreateProjectDetails {
  const factory CreateProjectDetails({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'status') required ProjectStatus projectStatus,
    @JsonKey(name: 'managerComment') required String managerComment,
    @JsonKey(name: 'directions') required List<int> directionIds,
    @JsonKey(name: 'tasks') required List<Task> tasks,
    @JsonKey(name: 'legalPerson') required LegalPerson? legalPerson,
    @JsonKey(name: 'gvs') required List<int> gvs,
    @JsonKey(name: 'expertiseGvs') required ExpertiseGvs expertiseGvs,
    @JsonKey(name: 'pilotingStatus') required PilotingStatus pilotingStatus,
    @JsonKey(name: 'hospitals') required List<int> hospitalsIds,
    @JsonKey(name: 'managerId') required int managerId,
    @JsonKey(name: 'priority') required Prioritization priority,
    @JsonKey(name: 'hasRegisterCertificate') required bool hasRegisterCertificate,
    @JsonKey(name: 'resident') required Resident? resident,
    @JsonKey(name: 'paymentForDoctors') required List<PaymentForDoctor>? paymentForDoctors,
    @JsonKey(name: 'fundRequestList') required List<CreateFundRequest>? fundRequestList,
    @JsonKey(name: 'emiasIntegration') required EmiasState? emiasStatus,
    @JsonKey(name: 'purchaseMhd') required PurchaseMhd? purchaseMHD,
  }) = _CreateProjectDetails;

  factory CreateProjectDetails.fromJson(Map<String, dynamic> json) => _$CreateProjectDetailsFromJson(json);
}

enum ExpertiseGvs {
  @JsonValue(0)
  notSent,
  @JsonValue(1)
  waiting,
  @JsonValue(2)
  positive,
  @JsonValue(3)
  rework,
  @JsonValue(4)
  negative;

  int get jsonValue {
    switch (this) {
      case ExpertiseGvs.notSent:
        return 0;
      case ExpertiseGvs.waiting:
        return 1;
      case ExpertiseGvs.positive:
        return 2;
      case ExpertiseGvs.rework:
        return 3;
      case ExpertiseGvs.negative:
        return 4;
    }
  }

  String get title {
    switch (this) {
      case ExpertiseGvs.notSent:
        return 'Не отправлено';
      case ExpertiseGvs.waiting:
        return 'Ожидание';
      case ExpertiseGvs.positive:
        return 'Положительный';
      case ExpertiseGvs.rework:
        return 'Доработка';
      case ExpertiseGvs.negative:
        return 'Отрицательный';
    }
  }
}

enum PilotingStatus {
  @JsonValue(0)
  notPiloted,
  @JsonValue(1)
  active,
  @JsonValue(2)
  completed;

  int get jsonValue {
    switch (this) {
      case PilotingStatus.notPiloted:
        return 0;
      case PilotingStatus.active:
        return 1;
      case PilotingStatus.completed:
        return 2;
    }
  }

  String get title {
    switch (this) {
      case PilotingStatus.notPiloted:
        return 'Не пилотируется';
      case PilotingStatus.active:
        return 'Активный';
      case PilotingStatus.completed:
        return 'Завершенный';
    }
  }
}
