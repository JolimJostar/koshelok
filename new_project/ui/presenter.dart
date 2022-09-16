import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/data/api/error.dart';
import 'package:medtech/base/ui/lce/error/contract.dart';
import 'package:medtech/base/ui/utils/itn.dart';
import 'package:medtech/base/ui/presenter.dart';
import 'package:medtech/feature/filters/domain/model/filter.dart';
import 'package:medtech/feature/main/domain/interactor.dart';
import 'package:medtech/feature/managers/domain/model/user.dart';
import 'package:medtech/feature/new_project/domain/interactor.dart';
import 'package:medtech/feature/new_project/domain/model/cell.dart';
import 'package:medtech/feature/new_project/domain/model/create_draft_project_details.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';
import 'package:medtech/feature/new_project/domain/model/create_project_details.dart';
import 'package:medtech/feature/new_project/domain/model/task.dart';
import 'package:medtech/feature/new_project/ui/contract.dart';
import 'package:medtech/feature/profile/domain/interactor.dart';
import 'package:medtech/feature/project/domain/legal_person.dart';
import 'package:medtech/feature/project/domain/payment_for_doctor.dart';
import 'package:medtech/feature/project/domain/project_details.dart';
import 'package:medtech/feature/project/domain/resident.dart';

final newProjectPresenterProvider = StateNotifierProvider.autoDispose<NewProjectPresenter, ViewState>((ref) {
  return NewProjectPresenter(
    newProjectInteractor: ref.read(newProjectInteractorProvider),
    mainInteractor: ref.read(mainInteractorProvider),
    profileInteractor: ref.read(profileInteractorProvider),
  );
});

class NewProjectPresenter extends Presenter<ViewState, SingleEvent> {
  NewProjectPresenter({
    required this.newProjectInteractor,
    required this.mainInteractor,
    required this.profileInteractor,
  }) : super(const ViewState.loading());

  final NewProjectInteractor newProjectInteractor;
  final MainInteractor mainInteractor;
  final ProfileInteractor profileInteractor;

  Future<void> load() async {
    final managersResult = await newProjectInteractor.getManagers();
    final profileResult = await profileInteractor.getUser();

    if (managersResult.isRight && profileResult.isRight) {
      state = ViewState.content(
        managers: managersResult.right,
        name: '',
        isProjectActive: true,
        hasLegalPerson: false,
        legalPersonName: '',
        itnState: FieldAccountState.empty,
        itn: '',
        itnError: null,
        tasks: [],
        currentTask: '',
        managerComment: '',
        description: '',
        descriptionError: null,
        directions: [],
        gvs: [],
        expertiseGvs: null,
        pilotingStatus: null,
        hospitals: [],
        manager: profileResult.right,
        purchaseMhd: null,
        emiasProjectState: null,
        hasRegisterCertificate: false,
        hasResidency: false,
        hasEquipmentTable: false,
        contractFilename: null,
        contractBytes: null,
        prioritization: null,
        createFundRequestNavigationResults: [],
        residencySquare: null,
        residencyOffice: null,
        equipmentCells: [],
        doctorPaymentList: [],
      );
    } else {
      state = const ViewState.error(
        errorStates: ErrorStates.common(),
      );
    }
  }

  void setManager(User manager) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(manager: manager);
  }

  void removeManager() {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(manager: null);
  }

  void onNameChanged(String name) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(name: name);
  }

  void onLegalPersonNameChanged(String legalPersonName) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(legalPersonName: legalPersonName);
  }

  void onItnChanged(String itn) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(itn: itn);
  }

  void onCurrentTaskChanged(String currentTask) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(currentTask: currentTask);
  }

  void onStatusChanged(String managerComment) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(managerComment: managerComment);
  }

  void onDescriptionChanged(String description) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(description: description);
  }

  void checkDescription(String description) {
    final currentState = state as NewProjectContentState;

    String? errorString;

    if (description.length >= 1000) {
      errorString = 'Описание должно содержать не более 1000 символов';
    } else if (description.length < 100) {
      errorString = 'Описание должно содержать не менее 100 символов';
    }

    if (description.isEmpty) {
      state = currentState.copyWith(
        description: description,
        descriptionError: null,
      );
    } else {
      state = currentState.copyWith(descriptionError: errorString);
    }
  }

  void addDoctorPayment(PaymentForDoctor paymentForDoctor) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(doctorPaymentList: currentState.doctorPaymentList.toList()..add(paymentForDoctor));
  }

  void editDoctorPayment(PaymentForDoctor paymentForDoctor) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      doctorPaymentList: currentState.doctorPaymentList.map((current) {
        if (current.id == paymentForDoctor.id) {
          return paymentForDoctor;
        } else {
          return current;
        }
      }).toList(),
    );
  }

  void removeDoctorPayment(PaymentForDoctor paymentForDoctor) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(doctorPaymentList: currentState.doctorPaymentList.toList()..remove(paymentForDoctor));
  }

  void addFundRequest(CreateFundRequestNavigationResult createFundRequestNavigationResult) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      createFundRequestNavigationResults: currentState.createFundRequestNavigationResults.toList()
        ..add(createFundRequestNavigationResult),
    );
  }

  void editFundRequest(CreateFundRequestNavigationResult createFundRequestNavigationResult) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      createFundRequestNavigationResults: currentState.createFundRequestNavigationResults.map((current) {
        if (current.uuid == createFundRequestNavigationResult.uuid) {
          return createFundRequestNavigationResult;
        } else {
          return current;
        }
      }).toList(),
    );
  }

  void removeFundRequest(CreateFundRequestNavigationResult createFundRequestNavigationResult) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      createFundRequestNavigationResults: currentState.createFundRequestNavigationResults.toList()
        ..remove(createFundRequestNavigationResult),
    );
  }

  void onIsProjectActiveChanged(bool isProjectActive) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(isProjectActive: isProjectActive);
  }

  void switchHasLegalPersoneChanged(bool hasLegalPerson) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(hasLegalPerson: hasLegalPerson);
  }

  void checkItn(String itn) {
    final currentState = state as NewProjectContentState;

    if (itn.isEmpty) {
      state = currentState.copyWith(
        itnState: FieldAccountState.empty,
        itnError: null,
      );
    } else {
      state = currentState.copyWith(
        itnState: itnRegex.hasMatch(itn) ? FieldAccountState.correct : FieldAccountState.incorrect,
        itnError: itn.length == 10 ? null : 'Используйте только 10 цифр',
      );
    }
  }

  void setPurchaseMhd(PurchaseMhd purchaseMhd) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(purchaseMhd: purchaseMhd);
  }

  void setEmias(EmiasState emiasState) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(emiasProjectState: emiasState);
  }

  void switchHasResidency(bool hasResidency) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(hasResidency: hasResidency);
  }

  void switchHasRegisterCertificate(bool hasRegisterCertificate) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(hasRegisterCertificate: hasRegisterCertificate);
  }

  void onAddEquipmentClicked() {
    final currentState = state as NewProjectContentState;

    final lastAddedCellId = currentState.equipmentCells.isNotEmpty ? currentState.equipmentCells.last.id : 0;

    state = currentState.copyWith(
      hasEquipmentTable: true,
      equipmentCells: currentState.equipmentCells.toList()
        ..add(Cell(id: lastAddedCellId + 1, denomination: '', amount: '')),
    );
  }

  void setPrioritization(Prioritization prioritization) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(prioritization: prioritization);
  }

  void setExpertiseGvs(ExpertiseGvs expertiseGvs) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(expertiseGvs: expertiseGvs);
  }

  void setPilotingStatus(PilotingStatus pilotingStatus) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(pilotingStatus: pilotingStatus);
  }

  void onUploadContract({required List<int> bytes, required String filename}) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      contractFilename: filename,
      contractBytes: bytes,
    );
    send(const ShowMessageEvent(message: 'Файл успешно загружен'));
  }

  void onDeleteContract() {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      contractFilename: null,
      contractBytes: null,
    );
    send(const ShowMessageEvent(message: 'Файл удален'));
  }

  void addSelectedFilters(Map<FilterType, List<Filter>> selectedFilters) {
    final currentState = state as NewProjectContentState;

    for (final entry in selectedFilters.entries) {
      final filterType = entry.key;
      final currentSelectedFilters = entry.value;

      switch (filterType) {
        case FilterType.direction:
          final newSelectedDirections = currentState.directions.toList()
            ..removeWhere((e) => e.filterType == filterType)
            ..addAll(currentSelectedFilters);

          state = currentState.copyWith(directions: newSelectedDirections);
          break;
        case FilterType.gvs:
          final newSelectedGvs = currentState.gvs.toList()
            ..removeWhere((e) => e.filterType == filterType)
            ..addAll(currentSelectedFilters);

          state = currentState.copyWith(gvs: newSelectedGvs);
          break;
        case FilterType.hospital:
          final newSelectedHospitals = currentState.hospitals.toList()
            ..removeWhere((e) => e.filterType == filterType)
            ..addAll(currentSelectedFilters);

          state = currentState.copyWith(hospitals: newSelectedHospitals);
          break;
        default:
      }
    }
  }

  void removePurchaseMhdStatus() {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(purchaseMhd: null);
  }

  void removeEmiasProjecStatus() {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(emiasProjectState: null);
  }

  void removeCurrentSelection() {
    final currentState = state as NewProjectContentState;

    if (currentState.emiasProjectState != null) {
      removeEmiasProjecStatus();
    } else if (currentState.purchaseMhd != null) {
      removePurchaseMhdStatus();
    }
  }

  void removeFilter(Filter filter) {
    final currentState = state as NewProjectContentState;

    switch (filter.filterType) {
      case FilterType.direction:
        final newSelectedDirection = currentState.directions.toList()..remove(filter);
        state = currentState.copyWith(directions: newSelectedDirection);
        break;
      case FilterType.hospital:
        final newSelectedHospitals = currentState.hospitals.toList()..remove(filter);
        state = currentState.copyWith(hospitals: newSelectedHospitals);
        break;
      case FilterType.gvs:
        final newSelectedGVS = currentState.gvs.toList()..remove(filter);
        state = currentState.copyWith(gvs: newSelectedGVS);
        break;
      default:
    }
  }

  void onResidencySquareChanged(String square) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(residencySquare: square);
  }

  void onResidencyOfficeChanged(String office) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(residencyOffice: office);
  }

  void changeEquipmentCell(Cell equipmentCell) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      equipmentCells: currentState.equipmentCells.map((cell) {
        if (cell.id == equipmentCell.id) {
          return equipmentCell;
        } else {
          return cell;
        }
      }).toList(),
    );
  }

  void removeEquipmentCell(Cell equipmentCell) {
    final currentState = state as NewProjectContentState;
    state = currentState.copyWith(
      equipmentCells: currentState.equipmentCells.toList()..remove(equipmentCell),
    );
  }

  void saveToDraft() async {
    final currentState = state as NewProjectContentState;

    state = const ViewState.loading();
    final createDraftProjectDetails = CreateDraftProjectDetails(
      description: currentState.description,
      directionIds: currentState.directions.map((direction) => direction.id).toList(),
      emiasStatus: currentState.emiasProjectState,
      gvs: currentState.gvs.map((gvs) => gvs.id).toList(),
      hasRegisterCertificate: currentState.hasRegisterCertificate,
      hospitals: currentState.hospitals.map((hospital) => hospital.id).toList(),
      legalPerson: currentState.hasLegalPerson
          ? LegalPerson(
              id: null,
              name: currentState.legalPersonName,
              itn: currentState.itn,
            )
          : null,
      managerComment: currentState.managerComment,
      name: currentState.name,
      priority: currentState.prioritization,
      purchaseMHD: currentState.purchaseMhd,
      expertiseGvs: currentState.expertiseGvs,
      pilotingStatus: currentState.pilotingStatus,
      resident: currentState.hasResidency
          ? Resident(
              area: double.tryParse(currentState.residencySquare ?? ''),
              place: int.tryParse(currentState.residencyOffice ?? ''),
              equipments: currentState.equipmentCells
                  .map(
                    (e) => Equipment(
                      name: e.denomination ?? '',
                      count: int.tryParse(e.amount ?? '') ?? 0,
                    ),
                  )
                  .toList(),
            )
          : null,
      projectStatus: ProjectStatus.draft,
      task: currentState.currentTask.isNotEmpty
          ? [
              Task(
                name: currentState.currentTask,
                createdAt: DateTime.now(),
              ),
            ]
          : null,
      fundRequestSource: currentState.createFundRequestNavigationResults.map((createFundRequestNavigationResult) {
        return CreateFundRequest(
          id: createFundRequestNavigationResult.id,
          uuid: createFundRequestNavigationResult.uuid,
          isAttachmentsAccepted: createFundRequestNavigationResult.isAttachmentsAccepted,
          fundRequestSourceIds: createFundRequestNavigationResult.createFundRequestSources.map((e) => e.id).toList(),
          sum: createFundRequestNavigationResult.sum,
        );
      }).toList(),
      paymentForDoctor: currentState.doctorPaymentList,
      managerId: currentState.manager != null ? currentState.manager!.id : null,
    );

    final result = await newProjectInteractor.createDraft(createDraftProjectDetails);

    result.fold(
      (exception) {
        if (exception is DioError) {
          try {
            final error = ErrorDto.fromJson(exception.response!.data);
            state = currentState;
            send(ShowMessageEvent(message: error.message));
          } catch (_) {
            state = currentState;
            send(const ShowMessageEvent(message: 'Не удалось создать проект'));
          }
        } else {
          state = currentState;
          send(const ShowMessageEvent(message: 'Не удалось создать проект'));
        }
      },
      (newProjectDetails) async {
        if (currentState.contractFilename?.isNotEmpty ?? false) {
          await newProjectInteractor.uploadContract(
            bytes: currentState.contractBytes!,
            filename: currentState.contractFilename!,
            projectId: newProjectDetails.id,
          );
        }

        for (final item in newProjectDetails.fundRequests) {
          final currentAttachment =
              currentState.createFundRequestNavigationResults.firstWhere((element) => element.uuid == item.uuid);

          if (currentAttachment.presentationFilename != null) {
            await newProjectInteractor.uploadPresentation(
              bytes: currentAttachment.presentationBytes!,
              filename: currentAttachment.presentationFilename!,
              projectId: newProjectDetails.id,
              fundRequestId: item.id,
            );
          }
        }

        send(NavigateBackEvent(draftDetails: createDraftProjectDetails));
      },
    );
  }

  void create() async {
    final currentState = state as NewProjectContentState;

    state = const ViewState.loading();
    final createProjectDetails = CreateProjectDetails(
      description: currentState.description,
      directionIds: currentState.directions.map((direction) => direction.id).toList(),
      emiasStatus: currentState.emiasProjectState,
      gvs: currentState.gvs.map((gvs) => gvs.id).toList(),
      hasRegisterCertificate: currentState.hasRegisterCertificate,
      hospitalsIds: currentState.hospitals.map((hospital) => hospital.id).toList(),
      legalPerson: currentState.hasLegalPerson
          ? LegalPerson(
              id: null,
              name: currentState.legalPersonName,
              itn: currentState.itn,
            )
          : null,
      managerComment: currentState.managerComment,
      name: currentState.name,
      priority: currentState.prioritization!,
      purchaseMHD: currentState.purchaseMhd,
      expertiseGvs: currentState.expertiseGvs!,
      pilotingStatus: currentState.pilotingStatus!,
      resident: currentState.hasResidency
          ? Resident(
              area: double.tryParse(currentState.residencySquare ?? ''),
              place: int.tryParse(currentState.residencyOffice ?? ''),
              equipments: currentState.equipmentCells
                  .map(
                    (e) => Equipment(
                      name: e.denomination ?? '',
                      count: int.tryParse(e.amount ?? '') ?? 0,
                    ),
                  )
                  .toList(),
            )
          : null,
      projectStatus: currentState.isProjectActive ? ProjectStatus.active : ProjectStatus.frozen,
      tasks: [
        Task(
          name: currentState.currentTask,
          createdAt: DateTime.now(),
        )
      ],
      fundRequestList: currentState.createFundRequestNavigationResults.map((createFundRequestNavigationResult) {
        return CreateFundRequest(
          id: createFundRequestNavigationResult.id,
          uuid: createFundRequestNavigationResult.uuid,
          isAttachmentsAccepted: createFundRequestNavigationResult.isAttachmentsAccepted,
          fundRequestSourceIds: createFundRequestNavigationResult.createFundRequestSources.map((e) => e.id).toList(),
          sum: createFundRequestNavigationResult.sum,
        );
      }).toList(),
      paymentForDoctors: currentState.doctorPaymentList,
      managerId: currentState.manager!.id,
    );

    final result = await newProjectInteractor.createNewProject(createProjectDetails);

    result.fold(
      (exception) {
        if (exception is DioError) {
          try {
            final error = ErrorDto.fromJson(exception.response!.data);
            state = currentState;
            send(ShowMessageEvent(message: error.message));
          } catch (_) {
            state = currentState;
            send(const ShowMessageEvent(message: 'Не удалось создать проект'));
          }
        } else {
          state = currentState;
          send(const ShowMessageEvent(message: 'Не удалось создать проект'));
        }
      },
      (newProjectDetails) async {
        if (currentState.contractFilename?.isNotEmpty ?? false) {
          await newProjectInteractor.uploadContract(
            bytes: currentState.contractBytes!,
            filename: currentState.contractFilename!,
            projectId: newProjectDetails.id,
          );
        }

        for (final item in newProjectDetails.fundRequests) {
          final currentAttachment =
              currentState.createFundRequestNavigationResults.firstWhere((element) => element.uuid == item.uuid);

          if (currentAttachment.presentationFilename != null) {
            await newProjectInteractor.uploadPresentation(
              bytes: currentAttachment.presentationBytes!,
              filename: currentAttachment.presentationFilename!,
              projectId: newProjectDetails.id,
              fundRequestId: item.id,
            );
          }
        }

        send(NavigateBackEvent(projectDetails: createProjectDetails));
        send(const ShowMessageEvent(message: 'Проект опубликован'));
        send(const ReloadDashboardEvent());
      },
    );
  }
}
