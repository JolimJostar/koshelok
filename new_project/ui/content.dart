import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/ui/theme/provider.dart';
import 'package:medtech/base/ui/widget/file_input.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/emias_selection_dialog.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/expertise_gvs_seletion_dialog.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/piloting_status_selection_dialog.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/prioritization_selection_dialog.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/project_status_selection_dialog.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/radio_selection.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/select_filters.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/select_manager.dart';
import 'package:medtech/base/ui/widget/text_input.dart';
import 'package:medtech/base/ui/widget/switch_input.dart';
import 'package:medtech/feature/create_fund_request/ui/page.dart';
import 'package:medtech/feature/doctor_payment/ui/page.dart';
import 'package:medtech/feature/filters/domain/model/filter.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';
import 'package:medtech/feature/new_project/ui/contract.dart';
import 'package:medtech/feature/new_project/ui/presenter.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/select_table.dart';
import 'package:medtech/feature/new_project/ui/widget/doctor_payment.dart';
import 'package:medtech/feature/new_project/ui/widget/source_of_investment.dart';
import 'package:medtech/feature/project/domain/payment_for_doctor.dart';

import '../../../base/ui/widget/mutate_project_related/info_container_input.dart';

class NewProjectScreen extends HookConsumerWidget {
  const NewProjectScreen({required this.state, super.key});

  final NewProjectContentState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final presenter = ref.watch(newProjectPresenterProvider.notifier);

    final nameController = useTextEditingController(text: state.name);
    final nameFocusNode = useFocusNode();

    final legalPersonNameController = useTextEditingController(text: state.legalPersonName);
    final legalPersonNameFocusNode = useFocusNode();

    final itnController = useTextEditingController(text: state.itn);
    final itnFocusNode = useFocusNode();

    final currentTaskController = useTextEditingController(text: state.currentTask);
    final currentTaskFocusNode = useFocusNode();

    final statusController = useTextEditingController(text: state.managerComment);
    final statusFocusNode = useFocusNode();

    final descriptionController = useTextEditingController(text: state.description);
    final descriptionFocusNode = useFocusNode();

    final residencySquareController = useTextEditingController(text: state.residencySquare);
    final residencySquareFocusNode = useFocusNode();

    final residencyOfficeController = useTextEditingController(text: state.residencyOffice);
    final residencyOfficeFocusNode = useFocusNode();

    final showFab = useState(true);

    useEffect(
      () {
        void itnFocusNodeListener() => presenter.checkItn(itnController.text);
        void descriptionFocusNodeListener() => presenter.checkDescription(descriptionController.text);

        itnFocusNode.addListener(itnFocusNodeListener);
        descriptionFocusNode.addListener(descriptionFocusNodeListener);

        return () {
          itnFocusNode.removeListener(itnFocusNodeListener);
          descriptionFocusNode.removeListener(descriptionFocusNodeListener);
        };
      },
      [itnFocusNode, descriptionFocusNode],
    );

    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        showFab.value = !isKeyboardVisible;

        return Scaffold(
          backgroundColor: theme.colorWhite,
          floatingActionButton: AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: showFab.value ? Offset.zero : const Offset(0, 2),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: showFab.value ? 1 : 0,
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (state.readyToCreate) {
                    presenter.create();
                  } else {
                    presenter.saveToDraft();
                  }
                },
                backgroundColor: theme.colorMain,
                extendedPadding: const EdgeInsets.fromLTRB(12, 12, 20, 12),
                label: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        state.readyToCreate ? 'ОПУБЛИКОВАТЬ' : 'В ЧЕРНОВИК',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 28, 16, 0),
                child: InputTextWidget(
                  labelText: 'Название проекта *',
                  textController: nameController,
                  focusNode: nameFocusNode,
                  onChanged: presenter.onNameChanged,
                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(
                    state.hasLegalPerson ? legalPersonNameFocusNode : currentTaskFocusNode,
                  ),
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 10, 0),
                child: SwitchWidget(
                  title: 'Активный проект',
                  initialValue: state.isProjectActive,
                  onChange: presenter.onIsProjectActiveChanged,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 10, 0),
                child: SwitchWidget(
                  title: 'Юридическое лицо',
                  initialValue: state.hasLegalPerson,
                  onChange: (hasLegalPerson) {
                    presenter.switchHasLegalPersoneChanged(hasLegalPerson);
                  },
                ),
              ),
              if (state.hasLegalPerson)
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 26, 16, 16),
                      child: InputTextWidget(
                        labelText: 'Наименование юридического лица *',
                        textController: legalPersonNameController,
                        focusNode: legalPersonNameFocusNode,
                        onChanged: presenter.onLegalPersonNameChanged,
                        onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(itnFocusNode),
                        textInputAction: TextInputAction.next,
                        maxLines: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 88, 16, 0),
                      child: Text(
                        'Обязательно для публикации',
                        style: TextStyle(
                          color: theme.colorGrey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              if (state.hasLegalPerson)
                Padding(
                  padding: EdgeInsets.fromLTRB(16, state.hasLegalPerson ? 16 : 0, 16, 0),
                  child: InputTextWidget(
                    labelText: 'ИНН *',
                    textController: itnController,
                    focusNode: itnFocusNode,
                    onChanged: presenter.onItnChanged,
                    onFieldSubmitted: (itn) {
                      presenter.checkItn(itn);
                      FocusScope.of(context).requestFocus(currentTaskFocusNode);
                    },
                    errorText: state.itnError,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                child: InputTextWidget(
                  labelText: 'Актуальная задача по проекту *',
                  textController: currentTaskController,
                  focusNode: currentTaskFocusNode,
                  onChanged: presenter.onCurrentTaskChanged,
                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(statusFocusNode),
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                child: InputTextWidget(
                  labelText: 'Текущий статус проекта *',
                  textController: statusController,
                  focusNode: statusFocusNode,
                  onChanged: presenter.onStatusChanged,
                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(descriptionFocusNode),
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                child: InputTextWidget(
                  labelText: 'Описание *',
                  textController: descriptionController,
                  focusNode: descriptionFocusNode,
                  onChanged: presenter.onDescriptionChanged,
                  onFieldSubmitted: (description) {
                    presenter.checkDescription(description);
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  errorText: state.descriptionError,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  maxLength: 1000,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 21, 0),
                child: Column(
                  children: [
                    SelectFiltersInput(
                      onAddSelectedFilters: (filters) => presenter.addSelectedFilters(filters),
                      onRemoveSelectedFilters: (filter) => presenter.removeFilter(filter),
                      title: 'Направления *',
                      imagePath: 'assets/icons/ic_direction.svg',
                      filterType: FilterType.direction,
                      filters: state.directions,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: SelectFiltersInput(
                  onAddSelectedFilters: (filters) => presenter.addSelectedFilters(filters),
                  onRemoveSelectedFilters: (filter) => presenter.removeFilter(filter),
                  title: 'ГВС *',
                  imagePath: 'assets/icons/ic_gvs.svg',
                  filterType: FilterType.gvs,
                  filters: state.gvs,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: RadioSelectionInput(
                  title: 'Статус экспертизы *',
                  iconPath: 'assets/icons/ic_error.svg',
                  currentSelection: state.expertiseGvs?.title,
                  onPressed: () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return ExpertiseGvsSelectDialog(
                          initialValue: state.expertiseGvs,
                          titleDialog: 'Экспертиза ГВС',
                        );
                      },
                    );
                    if (res != null) {
                      presenter.setExpertiseGvs(res);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: SelectFiltersInput(
                  onAddSelectedFilters: (filters) => presenter.addSelectedFilters(filters),
                  onRemoveSelectedFilters: (filter) => presenter.removeFilter(filter),
                  title: 'Больницы *',
                  imagePath: 'assets/icons/ic_hospital.svg',
                  filterType: FilterType.hospital,
                  filters: state.hospitals,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: RadioSelectionInput(
                  title: 'Статус пилотирования *',
                  iconPath: 'assets/icons/ic_error.svg',
                  currentSelection: state.pilotingStatus?.title,
                  onPressed: () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return PilotingStatusSelectDialog(
                          initialValue: state.pilotingStatus,
                          titleDialog: 'Статус пилотирования',
                        );
                      },
                    );
                    if (res != null) {
                      presenter.setPilotingStatus(res);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: SelectManagerInput(
                  onAddManager: (manager) => presenter.setManager(manager),
                  onRemoveManager: () => presenter.removeManager(),
                  title: 'Менеджер *',
                  imagePath: 'assets/icons/ic_person.svg',
                  currentManager: state.manager,
                  managers: state.managers,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 10, 0),
                child: SwitchWidget(
                  title: 'Регистрационное удостоверение',
                  iconPath: 'assets/icons/ic_certificate.svg',
                  initialValue: state.hasRegisterCertificate,
                  onChange: presenter.switchHasRegisterCertificate,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: RadioSelectionInput(
                  title: 'Приоритет проекта *',
                  iconPath: 'assets/icons/ic_flag.svg',
                  currentSelection: state.prioritization?.title,
                  onPressed: () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return PrioritizationSelectDialog(
                          initialValue: state.prioritization,
                          titleDialog: 'Приоритет проекта',
                        );
                      },
                    );
                    if (res != null) {
                      presenter.setPrioritization(res);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: InfoContainerInput(
                  title: 'Оплата врачей',
                  iconPath: 'assets/icons/ic_gvs.svg',
                  onPressed: () async {
                    final result = await Navigator.of(context).pushNamed(
                      '/doctor_payment',
                      arguments: const DoctorPaymentArguments(
                        initialPaymentForDoctor: null,
                      ),
                    ) as PaymentForDoctor?;
                    if (result != null) {
                      presenter.addDoctorPayment(result);
                    }
                  },
                ),
              ),
              for (final doctorPayment in state.doctorPaymentList)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: DoctorPaymentCard(
                    doctorPayment: doctorPayment,
                    onEdit: () async {
                      final result = await Navigator.of(context).pushNamed(
                        '/doctor_payment',
                        arguments: DoctorPaymentArguments(
                          initialPaymentForDoctor: doctorPayment,
                        ),
                      ) as PaymentForDoctor?;
                      if (result != null) {
                        presenter.editDoctorPayment(result);
                      }
                    },
                    onDelete: () => presenter.removeDoctorPayment(doctorPayment),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: InfoContainerInput(
                  title: 'Запрос инвестиций',
                  iconPath: 'assets/icons/ic_currency.svg',
                  onPressed: () async {
                    final result = await Navigator.of(context).pushNamed(
                      '/create_fund_request',
                      arguments: const CreateFundRequestArguments(
                        initialCreateFundRequest: null,
                      ),
                    ) as CreateFundRequestNavigationResult?;
                    if (result != null) {
                      presenter.addFundRequest(result);
                    }
                  },
                ),
              ),
              for (final createFundRequestNavigationResult in state.createFundRequestNavigationResults)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: SourceOfInvestmentCard(
                    createFundRequestNavigationResult: createFundRequestNavigationResult,
                    onEdit: () async {
                      final result = await Navigator.of(context).pushNamed(
                        '/create_fund_request',
                        arguments: CreateFundRequestArguments(
                          initialCreateFundRequest: createFundRequestNavigationResult,
                        ),
                      ) as CreateFundRequestNavigationResult?;
                      if (result != null) {
                        presenter.editFundRequest(result);
                      }
                    },
                    onDelete: () => presenter.removeFundRequest(createFundRequestNavigationResult),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: RadioSelectionInput(
                  title: 'Закупка ДЗМ',
                  iconPath: 'assets/icons/ic_purchase.svg',
                  currentSelection: state.purchaseMhd?.title,
                  onDelete: presenter.removePurchaseMhdStatus,
                  onPressed: () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return PurchaseMhdSelectDialog(
                          initialValue: state.purchaseMhd,
                          titleDialog: 'Закупка ДЗМ',
                        );
                      },
                    );
                    if (res != null) {
                      presenter.setPurchaseMhd(res);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 21, 0),
                child: RadioSelectionInput(
                  title: 'Интеграция в ЕМИАС',
                  iconPath: 'assets/icons/ic_emias.svg',
                  currentSelection: state.emiasProjectState?.title,
                  onDelete: presenter.removeEmiasProjecStatus,
                  onPressed: () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return EmiasStateSelectDialog(
                          initialValue: state.emiasProjectState,
                          titleDialog: 'Интеграция в ЕМИАС',
                        );
                      },
                    );
                    if (res != null) {
                      presenter.setEmias(res);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 26, 10, 0),
                child: SwitchWidget(
                  title: 'Резиденство',
                  iconPath: 'assets/icons/ic_residency.svg',
                  initialValue: state.hasResidency,
                  onChange: presenter.switchHasResidency,
                ),
              ),
              if (state.hasResidency)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: InputTextWidget(
                    labelText: 'Площадь, м кв. ',
                    textController: residencySquareController,
                    focusNode: residencySquareFocusNode,
                    onChanged: presenter.onResidencySquareChanged,
                    onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(residencyOfficeFocusNode),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                  ),
                ),
              if (state.hasResidency)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                  child: InputTextWidget(
                    labelText: '№ помещения',
                    textController: residencyOfficeController,
                    focusNode: residencyOfficeFocusNode,
                    onChanged: presenter.onResidencyOfficeChanged,
                    onFieldSubmitted: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                  ),
                ),
              if (state.hasResidency)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                  child: FileInputWidget(
                    actionText: 'ЗАГРУЗИТЬ ДОГОВОР',
                    typeOfFile: 'Договор',
                    isUploading: false,
                    filename: state.contractFilename,
                    onUpload: presenter.onUploadContract,
                    onDelete: presenter.onDeleteContract,
                    fileType: FileType.any,
                  ),
                ),
              if (state.hasResidency)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 21, 0),
                  child: SelectTable(
                    state: state,
                    title: 'Оборудование',
                    imagePath: 'assets/icons/ic_equipment.svg',
                    initialValue: state.hasEquipmentTable,
                    cells: state.equipmentCells,
                    onAddEquipmentClicked: () => presenter.onAddEquipmentClicked(),
                    removeEquipmentCell: (cell) => presenter.removeEquipmentCell(cell),
                    onChangeEquipmentCell: (cell) => presenter.changeEquipmentCell(cell),
                  ),
                ),
              const SizedBox(height: 88),
            ],
          ),
        );
      },
    );
  }
}
