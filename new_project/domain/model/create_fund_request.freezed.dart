// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_fund_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateFundRequest _$CreateFundRequestFromJson(Map<String, dynamic> json) {
  return _CreateFundRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateFundRequest {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum')
  double? get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAttachmentsAccepted')
  bool get isAttachmentsAccepted => throw _privateConstructorUsedError;
  @JsonKey(name: 'fundRequestSourcesIds')
  List<int>? get fundRequestSourceIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateFundRequestCopyWith<CreateFundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFundRequestCopyWith<$Res> {
  factory $CreateFundRequestCopyWith(
          CreateFundRequest value, $Res Function(CreateFundRequest) then) =
      _$CreateFundRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'sum') double? sum,
      @JsonKey(name: 'isAttachmentsAccepted') bool isAttachmentsAccepted,
      @JsonKey(name: 'fundRequestSourcesIds') List<int>? fundRequestSourceIds});
}

/// @nodoc
class _$CreateFundRequestCopyWithImpl<$Res>
    implements $CreateFundRequestCopyWith<$Res> {
  _$CreateFundRequestCopyWithImpl(this._value, this._then);

  final CreateFundRequest _value;
  // ignore: unused_field
  final $Res Function(CreateFundRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? sum = freezed,
    Object? isAttachmentsAccepted = freezed,
    Object? fundRequestSourceIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      isAttachmentsAccepted: isAttachmentsAccepted == freezed
          ? _value.isAttachmentsAccepted
          : isAttachmentsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      fundRequestSourceIds: fundRequestSourceIds == freezed
          ? _value.fundRequestSourceIds
          : fundRequestSourceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateFundRequestCopyWith<$Res>
    implements $CreateFundRequestCopyWith<$Res> {
  factory _$$_CreateFundRequestCopyWith(_$_CreateFundRequest value,
          $Res Function(_$_CreateFundRequest) then) =
      __$$_CreateFundRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'sum') double? sum,
      @JsonKey(name: 'isAttachmentsAccepted') bool isAttachmentsAccepted,
      @JsonKey(name: 'fundRequestSourcesIds') List<int>? fundRequestSourceIds});
}

/// @nodoc
class __$$_CreateFundRequestCopyWithImpl<$Res>
    extends _$CreateFundRequestCopyWithImpl<$Res>
    implements _$$_CreateFundRequestCopyWith<$Res> {
  __$$_CreateFundRequestCopyWithImpl(
      _$_CreateFundRequest _value, $Res Function(_$_CreateFundRequest) _then)
      : super(_value, (v) => _then(v as _$_CreateFundRequest));

  @override
  _$_CreateFundRequest get _value => super._value as _$_CreateFundRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? sum = freezed,
    Object? isAttachmentsAccepted = freezed,
    Object? fundRequestSourceIds = freezed,
  }) {
    return _then(_$_CreateFundRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      isAttachmentsAccepted: isAttachmentsAccepted == freezed
          ? _value.isAttachmentsAccepted
          : isAttachmentsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      fundRequestSourceIds: fundRequestSourceIds == freezed
          ? _value._fundRequestSourceIds
          : fundRequestSourceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateFundRequest implements _CreateFundRequest {
  const _$_CreateFundRequest(
      {@JsonKey(name: 'id')
          this.id,
      @JsonKey(name: 'uuid')
          this.uuid,
      @JsonKey(name: 'sum')
          this.sum,
      @JsonKey(name: 'isAttachmentsAccepted')
          required this.isAttachmentsAccepted,
      @JsonKey(name: 'fundRequestSourcesIds')
          final List<int>? fundRequestSourceIds})
      : _fundRequestSourceIds = fundRequestSourceIds;

  factory _$_CreateFundRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateFundRequestFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'sum')
  final double? sum;
  @override
  @JsonKey(name: 'isAttachmentsAccepted')
  final bool isAttachmentsAccepted;
  final List<int>? _fundRequestSourceIds;
  @override
  @JsonKey(name: 'fundRequestSourcesIds')
  List<int>? get fundRequestSourceIds {
    final value = _fundRequestSourceIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateFundRequest(id: $id, uuid: $uuid, sum: $sum, isAttachmentsAccepted: $isAttachmentsAccepted, fundRequestSourceIds: $fundRequestSourceIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFundRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.sum, sum) &&
            const DeepCollectionEquality()
                .equals(other.isAttachmentsAccepted, isAttachmentsAccepted) &&
            const DeepCollectionEquality()
                .equals(other._fundRequestSourceIds, _fundRequestSourceIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(sum),
      const DeepCollectionEquality().hash(isAttachmentsAccepted),
      const DeepCollectionEquality().hash(_fundRequestSourceIds));

  @JsonKey(ignore: true)
  @override
  _$$_CreateFundRequestCopyWith<_$_CreateFundRequest> get copyWith =>
      __$$_CreateFundRequestCopyWithImpl<_$_CreateFundRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateFundRequestToJson(
      this,
    );
  }
}

abstract class _CreateFundRequest implements CreateFundRequest {
  const factory _CreateFundRequest(
      {@JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'uuid')
          final String? uuid,
      @JsonKey(name: 'sum')
          final double? sum,
      @JsonKey(name: 'isAttachmentsAccepted')
          required final bool isAttachmentsAccepted,
      @JsonKey(name: 'fundRequestSourcesIds')
          final List<int>? fundRequestSourceIds}) = _$_CreateFundRequest;

  factory _CreateFundRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateFundRequest.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'sum')
  double? get sum;
  @override
  @JsonKey(name: 'isAttachmentsAccepted')
  bool get isAttachmentsAccepted;
  @override
  @JsonKey(name: 'fundRequestSourcesIds')
  List<int>? get fundRequestSourceIds;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFundRequestCopyWith<_$_CreateFundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateFundRequestSource _$CreateFundRequestSourceFromJson(
    Map<String, dynamic> json) {
  return _CreateFundRequestSource.fromJson(json);
}

/// @nodoc
mixin _$CreateFundRequestSource {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateFundRequestSourceCopyWith<CreateFundRequestSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFundRequestSourceCopyWith<$Res> {
  factory $CreateFundRequestSourceCopyWith(CreateFundRequestSource value,
          $Res Function(CreateFundRequestSource) then) =
      _$CreateFundRequestSourceCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CreateFundRequestSourceCopyWithImpl<$Res>
    implements $CreateFundRequestSourceCopyWith<$Res> {
  _$CreateFundRequestSourceCopyWithImpl(this._value, this._then);

  final CreateFundRequestSource _value;
  // ignore: unused_field
  final $Res Function(CreateFundRequestSource) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateFundRequestSourceCopyWith<$Res>
    implements $CreateFundRequestSourceCopyWith<$Res> {
  factory _$$_CreateFundRequestSourceCopyWith(_$_CreateFundRequestSource value,
          $Res Function(_$_CreateFundRequestSource) then) =
      __$$_CreateFundRequestSourceCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_CreateFundRequestSourceCopyWithImpl<$Res>
    extends _$CreateFundRequestSourceCopyWithImpl<$Res>
    implements _$$_CreateFundRequestSourceCopyWith<$Res> {
  __$$_CreateFundRequestSourceCopyWithImpl(_$_CreateFundRequestSource _value,
      $Res Function(_$_CreateFundRequestSource) _then)
      : super(_value, (v) => _then(v as _$_CreateFundRequestSource));

  @override
  _$_CreateFundRequestSource get _value =>
      super._value as _$_CreateFundRequestSource;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CreateFundRequestSource(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateFundRequestSource implements _CreateFundRequestSource {
  const _$_CreateFundRequestSource(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name});

  factory _$_CreateFundRequestSource.fromJson(Map<String, dynamic> json) =>
      _$$_CreateFundRequestSourceFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'CreateFundRequestSource(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFundRequestSource &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CreateFundRequestSourceCopyWith<_$_CreateFundRequestSource>
      get copyWith =>
          __$$_CreateFundRequestSourceCopyWithImpl<_$_CreateFundRequestSource>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateFundRequestSourceToJson(
      this,
    );
  }
}

abstract class _CreateFundRequestSource implements CreateFundRequestSource {
  const factory _CreateFundRequestSource(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$_CreateFundRequestSource;

  factory _CreateFundRequestSource.fromJson(Map<String, dynamic> json) =
      _$_CreateFundRequestSource.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFundRequestSourceCopyWith<_$_CreateFundRequestSource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFundRequestNavigationResult {
  int? get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  bool get isAttachmentsAccepted => throw _privateConstructorUsedError;
  String? get presentationFilename => throw _privateConstructorUsedError;
  List<int>? get presentationBytes => throw _privateConstructorUsedError;
  List<CreateFundRequestSource> get createFundRequestSources =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFundRequestNavigationResultCopyWith<CreateFundRequestNavigationResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFundRequestNavigationResultCopyWith<$Res> {
  factory $CreateFundRequestNavigationResultCopyWith(
          CreateFundRequestNavigationResult value,
          $Res Function(CreateFundRequestNavigationResult) then) =
      _$CreateFundRequestNavigationResultCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String uuid,
      double sum,
      bool isAttachmentsAccepted,
      String? presentationFilename,
      List<int>? presentationBytes,
      List<CreateFundRequestSource> createFundRequestSources});
}

/// @nodoc
class _$CreateFundRequestNavigationResultCopyWithImpl<$Res>
    implements $CreateFundRequestNavigationResultCopyWith<$Res> {
  _$CreateFundRequestNavigationResultCopyWithImpl(this._value, this._then);

  final CreateFundRequestNavigationResult _value;
  // ignore: unused_field
  final $Res Function(CreateFundRequestNavigationResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? sum = freezed,
    Object? isAttachmentsAccepted = freezed,
    Object? presentationFilename = freezed,
    Object? presentationBytes = freezed,
    Object? createFundRequestSources = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      isAttachmentsAccepted: isAttachmentsAccepted == freezed
          ? _value.isAttachmentsAccepted
          : isAttachmentsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      presentationFilename: presentationFilename == freezed
          ? _value.presentationFilename
          : presentationFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationBytes: presentationBytes == freezed
          ? _value.presentationBytes
          : presentationBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createFundRequestSources: createFundRequestSources == freezed
          ? _value.createFundRequestSources
          : createFundRequestSources // ignore: cast_nullable_to_non_nullable
              as List<CreateFundRequestSource>,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateFundRequestNavigationResultCopyWith<$Res>
    implements $CreateFundRequestNavigationResultCopyWith<$Res> {
  factory _$$_CreateFundRequestNavigationResultCopyWith(
          _$_CreateFundRequestNavigationResult value,
          $Res Function(_$_CreateFundRequestNavigationResult) then) =
      __$$_CreateFundRequestNavigationResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String uuid,
      double sum,
      bool isAttachmentsAccepted,
      String? presentationFilename,
      List<int>? presentationBytes,
      List<CreateFundRequestSource> createFundRequestSources});
}

/// @nodoc
class __$$_CreateFundRequestNavigationResultCopyWithImpl<$Res>
    extends _$CreateFundRequestNavigationResultCopyWithImpl<$Res>
    implements _$$_CreateFundRequestNavigationResultCopyWith<$Res> {
  __$$_CreateFundRequestNavigationResultCopyWithImpl(
      _$_CreateFundRequestNavigationResult _value,
      $Res Function(_$_CreateFundRequestNavigationResult) _then)
      : super(_value, (v) => _then(v as _$_CreateFundRequestNavigationResult));

  @override
  _$_CreateFundRequestNavigationResult get _value =>
      super._value as _$_CreateFundRequestNavigationResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? sum = freezed,
    Object? isAttachmentsAccepted = freezed,
    Object? presentationFilename = freezed,
    Object? presentationBytes = freezed,
    Object? createFundRequestSources = freezed,
  }) {
    return _then(_$_CreateFundRequestNavigationResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      isAttachmentsAccepted: isAttachmentsAccepted == freezed
          ? _value.isAttachmentsAccepted
          : isAttachmentsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      presentationFilename: presentationFilename == freezed
          ? _value.presentationFilename
          : presentationFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationBytes: presentationBytes == freezed
          ? _value._presentationBytes
          : presentationBytes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createFundRequestSources: createFundRequestSources == freezed
          ? _value._createFundRequestSources
          : createFundRequestSources // ignore: cast_nullable_to_non_nullable
              as List<CreateFundRequestSource>,
    ));
  }
}

/// @nodoc

class _$_CreateFundRequestNavigationResult
    implements _CreateFundRequestNavigationResult {
  const _$_CreateFundRequestNavigationResult(
      {required this.id,
      required this.uuid,
      required this.sum,
      required this.isAttachmentsAccepted,
      required this.presentationFilename,
      required final List<int>? presentationBytes,
      required final List<CreateFundRequestSource> createFundRequestSources})
      : _presentationBytes = presentationBytes,
        _createFundRequestSources = createFundRequestSources;

  @override
  final int? id;
  @override
  final String uuid;
  @override
  final double sum;
  @override
  final bool isAttachmentsAccepted;
  @override
  final String? presentationFilename;
  final List<int>? _presentationBytes;
  @override
  List<int>? get presentationBytes {
    final value = _presentationBytes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CreateFundRequestSource> _createFundRequestSources;
  @override
  List<CreateFundRequestSource> get createFundRequestSources {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createFundRequestSources);
  }

  @override
  String toString() {
    return 'CreateFundRequestNavigationResult(id: $id, uuid: $uuid, sum: $sum, isAttachmentsAccepted: $isAttachmentsAccepted, presentationFilename: $presentationFilename, presentationBytes: $presentationBytes, createFundRequestSources: $createFundRequestSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFundRequestNavigationResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.sum, sum) &&
            const DeepCollectionEquality()
                .equals(other.isAttachmentsAccepted, isAttachmentsAccepted) &&
            const DeepCollectionEquality()
                .equals(other.presentationFilename, presentationFilename) &&
            const DeepCollectionEquality()
                .equals(other._presentationBytes, _presentationBytes) &&
            const DeepCollectionEquality().equals(
                other._createFundRequestSources, _createFundRequestSources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(sum),
      const DeepCollectionEquality().hash(isAttachmentsAccepted),
      const DeepCollectionEquality().hash(presentationFilename),
      const DeepCollectionEquality().hash(_presentationBytes),
      const DeepCollectionEquality().hash(_createFundRequestSources));

  @JsonKey(ignore: true)
  @override
  _$$_CreateFundRequestNavigationResultCopyWith<
          _$_CreateFundRequestNavigationResult>
      get copyWith => __$$_CreateFundRequestNavigationResultCopyWithImpl<
          _$_CreateFundRequestNavigationResult>(this, _$identity);
}

abstract class _CreateFundRequestNavigationResult
    implements CreateFundRequestNavigationResult {
  const factory _CreateFundRequestNavigationResult(
      {required final int? id,
      required final String uuid,
      required final double sum,
      required final bool isAttachmentsAccepted,
      required final String? presentationFilename,
      required final List<int>? presentationBytes,
      required final List<CreateFundRequestSource>
          createFundRequestSources}) = _$_CreateFundRequestNavigationResult;

  @override
  int? get id;
  @override
  String get uuid;
  @override
  double get sum;
  @override
  bool get isAttachmentsAccepted;
  @override
  String? get presentationFilename;
  @override
  List<int>? get presentationBytes;
  @override
  List<CreateFundRequestSource> get createFundRequestSources;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFundRequestNavigationResultCopyWith<
          _$_CreateFundRequestNavigationResult>
      get copyWith => throw _privateConstructorUsedError;
}
