import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';
import 'package:medtech/feature/new_project/domain/model/create_project_details.dart';
import 'package:medtech/feature/new_project/domain/model/task.dart';
import 'package:medtech/feature/new_project/ui/contract.dart';
import 'package:medtech/feature/project/domain/legal_person.dart';
import 'package:medtech/feature/project/domain/payment_for_doctor.dart';
import 'package:medtech/feature/project/domain/project_details.dart';
import 'package:medtech/feature/project/domain/resident.dart';

part 'create_draft_project_details.freezed.dart';
part 'create_draft_project_details.g.dart';

// Copy of CreateProjectDetails with all nullable fields
@freezed
class CreateDraftProjectDetails with _$CreateDraftProjectDetails {
  const factory CreateDraftProjectDetails({
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'status') required ProjectStatus? projectStatus,
    @JsonKey(name: 'managerComment') required String? managerComment,
    @JsonKey(name: 'directions') required List<int>? directionIds,
    @JsonKey(name: 'tasks') required List<Task>? task,
    @JsonKey(name: 'legalPerson') required LegalPerson? legalPerson,
    @JsonKey(name: 'gvs') required List<int>? gvs,
    @JsonKey(name: 'expertiseGvs') required ExpertiseGvs? expertiseGvs,
    @JsonKey(name: 'pilotingStatus') required PilotingStatus? pilotingStatus,
    @JsonKey(name: 'hospitals') required List<int>? hospitals,
    @JsonKey(name: 'managerId') required int? managerId,
    @JsonKey(name: 'priority') required Prioritization? priority,
    @JsonKey(name: 'hasRegisterCertificate') required bool? hasRegisterCertificate,
    @JsonKey(name: 'resident') required Resident? resident,
    @JsonKey(name: 'fundRequestList') required List<CreateFundRequest>? fundRequestSource,
    @JsonKey(name: 'paymentForDoctors') required List<PaymentForDoctor>? paymentForDoctor,
    @JsonKey(name: 'emiasIntegration') required EmiasState? emiasStatus,
    @JsonKey(name: 'purchaseMhd') required PurchaseMhd? purchaseMHD,
  }) = _CreateDraftProjectDetails;

  factory CreateDraftProjectDetails.fromJson(Map<String, dynamic> json) => _$CreateDraftProjectDetailsFromJson(json);
}
