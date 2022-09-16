import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medtech/base/ui/lce/error/contract.dart';
import 'package:medtech/feature/managers/domain/model/user.dart';
import 'package:medtech/feature/new_project/domain/model/create_draft_project_details.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';
import 'package:medtech/feature/new_project/domain/model/create_project_details.dart';
import 'package:medtech/feature/new_project/domain/model/task.dart';

import '../../filters/domain/model/filter.dart';
import '../../project/domain/payment_for_doctor.dart';
import '../domain/model/cell.dart';

part 'contract.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const ViewState._();

  const factory ViewState.content({
    required List<User> managers,
    required String name,
    required bool isProjectActive,
    required bool hasLegalPerson,
    required String legalPersonName,
    required FieldAccountState itnState,
    required String itn,
    required String? itnError,
    required List<Task>? tasks,
    required String currentTask,
    required String managerComment,
    required String description,
    required String? descriptionError,
    required List<Filter> directions,
    required List<Filter> gvs,
    required List<Filter> hospitals,
    required ExpertiseGvs? expertiseGvs,
    required PilotingStatus? pilotingStatus,
    required User? manager,
    required bool hasRegisterCertificate,
    required Prioritization? prioritization,
    required List<PaymentForDoctor> doctorPaymentList,
    required bool hasResidency,
    required bool hasEquipmentTable,
    required String? contractFilename,
    required List<int>? contractBytes,
    required List<CreateFundRequestNavigationResult> createFundRequestNavigationResults,
    required PurchaseMhd? purchaseMhd,
    required EmiasState? emiasProjectState,
    required String? residencySquare,
    required String? residencyOffice,
    required List<Cell> equipmentCells,
  }) = NewProjectContentState;

  const factory ViewState.loading() = LoadingState;

  const factory ViewState.error({
    required ErrorStates errorStates,
  }) = ErrorState;

  bool get readyToCreate {
    final currentState = this as NewProjectContentState;
    return currentState.name.isNotEmpty &&
        currentState.currentTask.isNotEmpty &&
        currentState.managerComment.isNotEmpty &&
        currentState.description.isNotEmpty &&
        currentState.directions.isNotEmpty &&
        currentState.gvs.isNotEmpty &&
        currentState.expertiseGvs != null &&
        currentState.pilotingStatus != null &&
        currentState.prioritization != null &&
        currentState.hospitals.isNotEmpty &&
        currentState.manager != null &&
        (!currentState.hasLegalPerson ||
            currentState.hasLegalPerson && currentState.legalPersonName.isNotEmpty && currentState.itn.isNotEmpty);
  }
}

enum FieldAccountState { correct, incorrect, empty }

enum Prioritization {
  @JsonValue(0)
  high,
  @JsonValue(1)
  middle,
  @JsonValue(2)
  low;

  String get title {
    switch (this) {
      case Prioritization.high:
        return 'Высокий';
      case Prioritization.middle:
        return 'Средний';
      case Prioritization.low:
        return 'Низкий';
    }
  }
}

enum PurchaseMhd {
  @JsonValue(1)
  elaboration,
  @JsonValue(2)
  plan,
  @JsonValue(3)
  donePurchase;

  String get title {
    switch (this) {
      case PurchaseMhd.elaboration:
        return 'В проработку';
      case PurchaseMhd.plan:
        return 'В плане на текущий год';
      case PurchaseMhd.donePurchase:
        return 'Закупка состоялась';
    }
  }
}

enum EmiasState {
  @JsonValue(1)
  elaboration,
  @JsonValue(2)
  plan,
  @JsonValue(3)
  doneIntergration;

  String get title {
    switch (this) {
      case EmiasState.elaboration:
        return 'В проработку';
      case EmiasState.plan:
        return 'В плане на текущий год';
      case EmiasState.doneIntergration:
        return 'Интеграция состоялась';
    }
  }
}

abstract class SingleEvent {
  const SingleEvent();
}

class ShowMessageEvent extends SingleEvent {
  const ShowMessageEvent({required this.message});

  final String message;
}

class ReloadDashboardEvent extends SingleEvent {
  const ReloadDashboardEvent();
}

class NavigateBackEvent extends SingleEvent {
  const NavigateBackEvent({
    this.projectDetails,
    this.draftDetails,
  });

  final CreateProjectDetails? projectDetails;
  final CreateDraftProjectDetails? draftDetails;
}
