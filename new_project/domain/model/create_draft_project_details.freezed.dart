// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_draft_project_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateDraftProjectDetails _$CreateDraftProjectDetailsFromJson(
    Map<String, dynamic> json) {
  return _CreateDraftProjectDetails.fromJson(json);
}

/// @nodoc
mixin _$CreateDraftProjectDetails {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ProjectStatus? get projectStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'managerComment')
  String? get managerComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'directions')
  List<int>? get directionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks')
  List<Task>? get task => throw _privateConstructorUsedError;
  @JsonKey(name: 'legalPerson')
  LegalPerson? get legalPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'gvs')
  List<int>? get gvs => throw _privateConstructorUsedError;
  @JsonKey(name: 'expertiseGvs')
  ExpertiseGvs? get expertiseGvs => throw _privateConstructorUsedError;
  @JsonKey(name: 'pilotingStatus')
  PilotingStatus? get pilotingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'hospitals')
  List<int>? get hospitals => throw _privateConstructorUsedError;
  @JsonKey(name: 'managerId')
  int? get managerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  Prioritization? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasRegisterCertificate')
  bool? get hasRegisterCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'resident')
  Resident? get resident => throw _privateConstructorUsedError;
  @JsonKey(name: 'fundRequestList')
  List<CreateFundRequest>? get fundRequestSource =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentForDoctors')
  List<PaymentForDoctor>? get paymentForDoctor =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'emiasIntegration')
  EmiasState? get emiasStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchaseMhd')
  PurchaseMhd? get purchaseMHD => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateDraftProjectDetailsCopyWith<CreateDraftProjectDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDraftProjectDetailsCopyWith<$Res> {
  factory $CreateDraftProjectDetailsCopyWith(CreateDraftProjectDetails value,
          $Res Function(CreateDraftProjectDetails) then) =
      _$CreateDraftProjectDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'status')
          ProjectStatus? projectStatus,
      @JsonKey(name: 'managerComment')
          String? managerComment,
      @JsonKey(name: 'directions')
          List<int>? directionIds,
      @JsonKey(name: 'tasks')
          List<Task>? task,
      @JsonKey(name: 'legalPerson')
          LegalPerson? legalPerson,
      @JsonKey(name: 'gvs')
          List<int>? gvs,
      @JsonKey(name: 'expertiseGvs')
          ExpertiseGvs? expertiseGvs,
      @JsonKey(name: 'pilotingStatus')
          PilotingStatus? pilotingStatus,
      @JsonKey(name: 'hospitals')
          List<int>? hospitals,
      @JsonKey(name: 'managerId')
          int? managerId,
      @JsonKey(name: 'priority')
          Prioritization? priority,
      @JsonKey(name: 'hasRegisterCertificate')
          bool? hasRegisterCertificate,
      @JsonKey(name: 'resident')
          Resident? resident,
      @JsonKey(name: 'fundRequestList')
          List<CreateFundRequest>? fundRequestSource,
      @JsonKey(name: 'paymentForDoctors')
          List<PaymentForDoctor>? paymentForDoctor,
      @JsonKey(name: 'emiasIntegration')
          EmiasState? emiasStatus,
      @JsonKey(name: 'purchaseMhd')
          PurchaseMhd? purchaseMHD});

  $LegalPersonCopyWith<$Res>? get legalPerson;
  $ResidentCopyWith<$Res>? get resident;
}

/// @nodoc
class _$CreateDraftProjectDetailsCopyWithImpl<$Res>
    implements $CreateDraftProjectDetailsCopyWith<$Res> {
  _$CreateDraftProjectDetailsCopyWithImpl(this._value, this._then);

  final CreateDraftProjectDetails _value;
  // ignore: unused_field
  final $Res Function(CreateDraftProjectDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectStatus = freezed,
    Object? managerComment = freezed,
    Object? directionIds = freezed,
    Object? task = freezed,
    Object? legalPerson = freezed,
    Object? gvs = freezed,
    Object? expertiseGvs = freezed,
    Object? pilotingStatus = freezed,
    Object? hospitals = freezed,
    Object? managerId = freezed,
    Object? priority = freezed,
    Object? hasRegisterCertificate = freezed,
    Object? resident = freezed,
    Object? fundRequestSource = freezed,
    Object? paymentForDoctor = freezed,
    Object? emiasStatus = freezed,
    Object? purchaseMHD = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      projectStatus: projectStatus == freezed
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatus?,
      managerComment: managerComment == freezed
          ? _value.managerComment
          : managerComment // ignore: cast_nullable_to_non_nullable
              as String?,
      directionIds: directionIds == freezed
          ? _value.directionIds
          : directionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
      legalPerson: legalPerson == freezed
          ? _value.legalPerson
          : legalPerson // ignore: cast_nullable_to_non_nullable
              as LegalPerson?,
      gvs: gvs == freezed
          ? _value.gvs
          : gvs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      expertiseGvs: expertiseGvs == freezed
          ? _value.expertiseGvs
          : expertiseGvs // ignore: cast_nullable_to_non_nullable
              as ExpertiseGvs?,
      pilotingStatus: pilotingStatus == freezed
          ? _value.pilotingStatus
          : pilotingStatus // ignore: cast_nullable_to_non_nullable
              as PilotingStatus?,
      hospitals: hospitals == freezed
          ? _value.hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Prioritization?,
      hasRegisterCertificate: hasRegisterCertificate == freezed
          ? _value.hasRegisterCertificate
          : hasRegisterCertificate // ignore: cast_nullable_to_non_nullable
              as bool?,
      resident: resident == freezed
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident?,
      fundRequestSource: fundRequestSource == freezed
          ? _value.fundRequestSource
          : fundRequestSource // ignore: cast_nullable_to_non_nullable
              as List<CreateFundRequest>?,
      paymentForDoctor: paymentForDoctor == freezed
          ? _value.paymentForDoctor
          : paymentForDoctor // ignore: cast_nullable_to_non_nullable
              as List<PaymentForDoctor>?,
      emiasStatus: emiasStatus == freezed
          ? _value.emiasStatus
          : emiasStatus // ignore: cast_nullable_to_non_nullable
              as EmiasState?,
      purchaseMHD: purchaseMHD == freezed
          ? _value.purchaseMHD
          : purchaseMHD // ignore: cast_nullable_to_non_nullable
              as PurchaseMhd?,
    ));
  }

  @override
  $LegalPersonCopyWith<$Res>? get legalPerson {
    if (_value.legalPerson == null) {
      return null;
    }

    return $LegalPersonCopyWith<$Res>(_value.legalPerson!, (value) {
      return _then(_value.copyWith(legalPerson: value));
    });
  }

  @override
  $ResidentCopyWith<$Res>? get resident {
    if (_value.resident == null) {
      return null;
    }

    return $ResidentCopyWith<$Res>(_value.resident!, (value) {
      return _then(_value.copyWith(resident: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateDraftProjectDetailsCopyWith<$Res>
    implements $CreateDraftProjectDetailsCopyWith<$Res> {
  factory _$$_CreateDraftProjectDetailsCopyWith(
          _$_CreateDraftProjectDetails value,
          $Res Function(_$_CreateDraftProjectDetails) then) =
      __$$_CreateDraftProjectDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'status')
          ProjectStatus? projectStatus,
      @JsonKey(name: 'managerComment')
          String? managerComment,
      @JsonKey(name: 'directions')
          List<int>? directionIds,
      @JsonKey(name: 'tasks')
          List<Task>? task,
      @JsonKey(name: 'legalPerson')
          LegalPerson? legalPerson,
      @JsonKey(name: 'gvs')
          List<int>? gvs,
      @JsonKey(name: 'expertiseGvs')
          ExpertiseGvs? expertiseGvs,
      @JsonKey(name: 'pilotingStatus')
          PilotingStatus? pilotingStatus,
      @JsonKey(name: 'hospitals')
          List<int>? hospitals,
      @JsonKey(name: 'managerId')
          int? managerId,
      @JsonKey(name: 'priority')
          Prioritization? priority,
      @JsonKey(name: 'hasRegisterCertificate')
          bool? hasRegisterCertificate,
      @JsonKey(name: 'resident')
          Resident? resident,
      @JsonKey(name: 'fundRequestList')
          List<CreateFundRequest>? fundRequestSource,
      @JsonKey(name: 'paymentForDoctors')
          List<PaymentForDoctor>? paymentForDoctor,
      @JsonKey(name: 'emiasIntegration')
          EmiasState? emiasStatus,
      @JsonKey(name: 'purchaseMhd')
          PurchaseMhd? purchaseMHD});

  @override
  $LegalPersonCopyWith<$Res>? get legalPerson;
  @override
  $ResidentCopyWith<$Res>? get resident;
}

/// @nodoc
class __$$_CreateDraftProjectDetailsCopyWithImpl<$Res>
    extends _$CreateDraftProjectDetailsCopyWithImpl<$Res>
    implements _$$_CreateDraftProjectDetailsCopyWith<$Res> {
  __$$_CreateDraftProjectDetailsCopyWithImpl(
      _$_CreateDraftProjectDetails _value,
      $Res Function(_$_CreateDraftProjectDetails) _then)
      : super(_value, (v) => _then(v as _$_CreateDraftProjectDetails));

  @override
  _$_CreateDraftProjectDetails get _value =>
      super._value as _$_CreateDraftProjectDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectStatus = freezed,
    Object? managerComment = freezed,
    Object? directionIds = freezed,
    Object? task = freezed,
    Object? legalPerson = freezed,
    Object? gvs = freezed,
    Object? expertiseGvs = freezed,
    Object? pilotingStatus = freezed,
    Object? hospitals = freezed,
    Object? managerId = freezed,
    Object? priority = freezed,
    Object? hasRegisterCertificate = freezed,
    Object? resident = freezed,
    Object? fundRequestSource = freezed,
    Object? paymentForDoctor = freezed,
    Object? emiasStatus = freezed,
    Object? purchaseMHD = freezed,
  }) {
    return _then(_$_CreateDraftProjectDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      projectStatus: projectStatus == freezed
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatus?,
      managerComment: managerComment == freezed
          ? _value.managerComment
          : managerComment // ignore: cast_nullable_to_non_nullable
              as String?,
      directionIds: directionIds == freezed
          ? _value._directionIds
          : directionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      task: task == freezed
          ? _value._task
          : task // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
      legalPerson: legalPerson == freezed
          ? _value.legalPerson
          : legalPerson // ignore: cast_nullable_to_non_nullable
              as LegalPerson?,
      gvs: gvs == freezed
          ? _value._gvs
          : gvs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      expertiseGvs: expertiseGvs == freezed
          ? _value.expertiseGvs
          : expertiseGvs // ignore: cast_nullable_to_non_nullable
              as ExpertiseGvs?,
      pilotingStatus: pilotingStatus == freezed
          ? _value.pilotingStatus
          : pilotingStatus // ignore: cast_nullable_to_non_nullable
              as PilotingStatus?,
      hospitals: hospitals == freezed
          ? _value._hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Prioritization?,
      hasRegisterCertificate: hasRegisterCertificate == freezed
          ? _value.hasRegisterCertificate
          : hasRegisterCertificate // ignore: cast_nullable_to_non_nullable
              as bool?,
      resident: resident == freezed
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident?,
      fundRequestSource: fundRequestSource == freezed
          ? _value._fundRequestSource
          : fundRequestSource // ignore: cast_nullable_to_non_nullable
              as List<CreateFundRequest>?,
      paymentForDoctor: paymentForDoctor == freezed
          ? _value._paymentForDoctor
          : paymentForDoctor // ignore: cast_nullable_to_non_nullable
              as List<PaymentForDoctor>?,
      emiasStatus: emiasStatus == freezed
          ? _value.emiasStatus
          : emiasStatus // ignore: cast_nullable_to_non_nullable
              as EmiasState?,
      purchaseMHD: purchaseMHD == freezed
          ? _value.purchaseMHD
          : purchaseMHD // ignore: cast_nullable_to_non_nullable
              as PurchaseMhd?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateDraftProjectDetails implements _CreateDraftProjectDetails {
  const _$_CreateDraftProjectDetails(
      {@JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'description')
          required this.description,
      @JsonKey(name: 'status')
          required this.projectStatus,
      @JsonKey(name: 'managerComment')
          required this.managerComment,
      @JsonKey(name: 'directions')
          required final List<int>? directionIds,
      @JsonKey(name: 'tasks')
          required final List<Task>? task,
      @JsonKey(name: 'legalPerson')
          required this.legalPerson,
      @JsonKey(name: 'gvs')
          required final List<int>? gvs,
      @JsonKey(name: 'expertiseGvs')
          required this.expertiseGvs,
      @JsonKey(name: 'pilotingStatus')
          required this.pilotingStatus,
      @JsonKey(name: 'hospitals')
          required final List<int>? hospitals,
      @JsonKey(name: 'managerId')
          required this.managerId,
      @JsonKey(name: 'priority')
          required this.priority,
      @JsonKey(name: 'hasRegisterCertificate')
          required this.hasRegisterCertificate,
      @JsonKey(name: 'resident')
          required this.resident,
      @JsonKey(name: 'fundRequestList')
          required final List<CreateFundRequest>? fundRequestSource,
      @JsonKey(name: 'paymentForDoctors')
          required final List<PaymentForDoctor>? paymentForDoctor,
      @JsonKey(name: 'emiasIntegration')
          required this.emiasStatus,
      @JsonKey(name: 'purchaseMhd')
          required this.purchaseMHD})
      : _directionIds = directionIds,
        _task = task,
        _gvs = gvs,
        _hospitals = hospitals,
        _fundRequestSource = fundRequestSource,
        _paymentForDoctor = paymentForDoctor;

  factory _$_CreateDraftProjectDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CreateDraftProjectDetailsFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final ProjectStatus? projectStatus;
  @override
  @JsonKey(name: 'managerComment')
  final String? managerComment;
  final List<int>? _directionIds;
  @override
  @JsonKey(name: 'directions')
  List<int>? get directionIds {
    final value = _directionIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Task>? _task;
  @override
  @JsonKey(name: 'tasks')
  List<Task>? get task {
    final value = _task;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'legalPerson')
  final LegalPerson? legalPerson;
  final List<int>? _gvs;
  @override
  @JsonKey(name: 'gvs')
  List<int>? get gvs {
    final value = _gvs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'expertiseGvs')
  final ExpertiseGvs? expertiseGvs;
  @override
  @JsonKey(name: 'pilotingStatus')
  final PilotingStatus? pilotingStatus;
  final List<int>? _hospitals;
  @override
  @JsonKey(name: 'hospitals')
  List<int>? get hospitals {
    final value = _hospitals;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'managerId')
  final int? managerId;
  @override
  @JsonKey(name: 'priority')
  final Prioritization? priority;
  @override
  @JsonKey(name: 'hasRegisterCertificate')
  final bool? hasRegisterCertificate;
  @override
  @JsonKey(name: 'resident')
  final Resident? resident;
  final List<CreateFundRequest>? _fundRequestSource;
  @override
  @JsonKey(name: 'fundRequestList')
  List<CreateFundRequest>? get fundRequestSource {
    final value = _fundRequestSource;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaymentForDoctor>? _paymentForDoctor;
  @override
  @JsonKey(name: 'paymentForDoctors')
  List<PaymentForDoctor>? get paymentForDoctor {
    final value = _paymentForDoctor;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'emiasIntegration')
  final EmiasState? emiasStatus;
  @override
  @JsonKey(name: 'purchaseMhd')
  final PurchaseMhd? purchaseMHD;

  @override
  String toString() {
    return 'CreateDraftProjectDetails(name: $name, description: $description, projectStatus: $projectStatus, managerComment: $managerComment, directionIds: $directionIds, task: $task, legalPerson: $legalPerson, gvs: $gvs, expertiseGvs: $expertiseGvs, pilotingStatus: $pilotingStatus, hospitals: $hospitals, managerId: $managerId, priority: $priority, hasRegisterCertificate: $hasRegisterCertificate, resident: $resident, fundRequestSource: $fundRequestSource, paymentForDoctor: $paymentForDoctor, emiasStatus: $emiasStatus, purchaseMHD: $purchaseMHD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateDraftProjectDetails &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.projectStatus, projectStatus) &&
            const DeepCollectionEquality()
                .equals(other.managerComment, managerComment) &&
            const DeepCollectionEquality()
                .equals(other._directionIds, _directionIds) &&
            const DeepCollectionEquality().equals(other._task, _task) &&
            const DeepCollectionEquality()
                .equals(other.legalPerson, legalPerson) &&
            const DeepCollectionEquality().equals(other._gvs, _gvs) &&
            const DeepCollectionEquality()
                .equals(other.expertiseGvs, expertiseGvs) &&
            const DeepCollectionEquality()
                .equals(other.pilotingStatus, pilotingStatus) &&
            const DeepCollectionEquality()
                .equals(other._hospitals, _hospitals) &&
            const DeepCollectionEquality().equals(other.managerId, managerId) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality()
                .equals(other.hasRegisterCertificate, hasRegisterCertificate) &&
            const DeepCollectionEquality().equals(other.resident, resident) &&
            const DeepCollectionEquality()
                .equals(other._fundRequestSource, _fundRequestSource) &&
            const DeepCollectionEquality()
                .equals(other._paymentForDoctor, _paymentForDoctor) &&
            const DeepCollectionEquality()
                .equals(other.emiasStatus, emiasStatus) &&
            const DeepCollectionEquality()
                .equals(other.purchaseMHD, purchaseMHD));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(projectStatus),
        const DeepCollectionEquality().hash(managerComment),
        const DeepCollectionEquality().hash(_directionIds),
        const DeepCollectionEquality().hash(_task),
        const DeepCollectionEquality().hash(legalPerson),
        const DeepCollectionEquality().hash(_gvs),
        const DeepCollectionEquality().hash(expertiseGvs),
        const DeepCollectionEquality().hash(pilotingStatus),
        const DeepCollectionEquality().hash(_hospitals),
        const DeepCollectionEquality().hash(managerId),
        const DeepCollectionEquality().hash(priority),
        const DeepCollectionEquality().hash(hasRegisterCertificate),
        const DeepCollectionEquality().hash(resident),
        const DeepCollectionEquality().hash(_fundRequestSource),
        const DeepCollectionEquality().hash(_paymentForDoctor),
        const DeepCollectionEquality().hash(emiasStatus),
        const DeepCollectionEquality().hash(purchaseMHD)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_CreateDraftProjectDetailsCopyWith<_$_CreateDraftProjectDetails>
      get copyWith => __$$_CreateDraftProjectDetailsCopyWithImpl<
          _$_CreateDraftProjectDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateDraftProjectDetailsToJson(
      this,
    );
  }
}

abstract class _CreateDraftProjectDetails implements CreateDraftProjectDetails {
  const factory _CreateDraftProjectDetails(
          {@JsonKey(name: 'name')
              required final String? name,
          @JsonKey(name: 'description')
              required final String? description,
          @JsonKey(name: 'status')
              required final ProjectStatus? projectStatus,
          @JsonKey(name: 'managerComment')
              required final String? managerComment,
          @JsonKey(name: 'directions')
              required final List<int>? directionIds,
          @JsonKey(name: 'tasks')
              required final List<Task>? task,
          @JsonKey(name: 'legalPerson')
              required final LegalPerson? legalPerson,
          @JsonKey(name: 'gvs')
              required final List<int>? gvs,
          @JsonKey(name: 'expertiseGvs')
              required final ExpertiseGvs? expertiseGvs,
          @JsonKey(name: 'pilotingStatus')
              required final PilotingStatus? pilotingStatus,
          @JsonKey(name: 'hospitals')
              required final List<int>? hospitals,
          @JsonKey(name: 'managerId')
              required final int? managerId,
          @JsonKey(name: 'priority')
              required final Prioritization? priority,
          @JsonKey(name: 'hasRegisterCertificate')
              required final bool? hasRegisterCertificate,
          @JsonKey(name: 'resident')
              required final Resident? resident,
          @JsonKey(name: 'fundRequestList')
              required final List<CreateFundRequest>? fundRequestSource,
          @JsonKey(name: 'paymentForDoctors')
              required final List<PaymentForDoctor>? paymentForDoctor,
          @JsonKey(name: 'emiasIntegration')
              required final EmiasState? emiasStatus,
          @JsonKey(name: 'purchaseMhd')
              required final PurchaseMhd? purchaseMHD}) =
      _$_CreateDraftProjectDetails;

  factory _CreateDraftProjectDetails.fromJson(Map<String, dynamic> json) =
      _$_CreateDraftProjectDetails.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  ProjectStatus? get projectStatus;
  @override
  @JsonKey(name: 'managerComment')
  String? get managerComment;
  @override
  @JsonKey(name: 'directions')
  List<int>? get directionIds;
  @override
  @JsonKey(name: 'tasks')
  List<Task>? get task;
  @override
  @JsonKey(name: 'legalPerson')
  LegalPerson? get legalPerson;
  @override
  @JsonKey(name: 'gvs')
  List<int>? get gvs;
  @override
  @JsonKey(name: 'expertiseGvs')
  ExpertiseGvs? get expertiseGvs;
  @override
  @JsonKey(name: 'pilotingStatus')
  PilotingStatus? get pilotingStatus;
  @override
  @JsonKey(name: 'hospitals')
  List<int>? get hospitals;
  @override
  @JsonKey(name: 'managerId')
  int? get managerId;
  @override
  @JsonKey(name: 'priority')
  Prioritization? get priority;
  @override
  @JsonKey(name: 'hasRegisterCertificate')
  bool? get hasRegisterCertificate;
  @override
  @JsonKey(name: 'resident')
  Resident? get resident;
  @override
  @JsonKey(name: 'fundRequestList')
  List<CreateFundRequest>? get fundRequestSource;
  @override
  @JsonKey(name: 'paymentForDoctors')
  List<PaymentForDoctor>? get paymentForDoctor;
  @override
  @JsonKey(name: 'emiasIntegration')
  EmiasState? get emiasStatus;
  @override
  @JsonKey(name: 'purchaseMhd')
  PurchaseMhd? get purchaseMHD;
  @override
  @JsonKey(ignore: true)
  _$$_CreateDraftProjectDetailsCopyWith<_$_CreateDraftProjectDetails>
      get copyWith => throw _privateConstructorUsedError;
}
