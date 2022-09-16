// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cell _$CellFromJson(Map<String, dynamic> json) {
  return _Cell.fromJson(json);
}

/// @nodoc
mixin _$Cell {
  int get id => throw _privateConstructorUsedError;
  String? get denomination => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res>;
  $Res call({int id, String? denomination, String? amount});
}

/// @nodoc
class _$CellCopyWithImpl<$Res> implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  final Cell _value;
  // ignore: unused_field
  final $Res Function(Cell) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? denomination = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      denomination: denomination == freezed
          ? _value.denomination
          : denomination // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$_CellCopyWith(_$_Cell value, $Res Function(_$_Cell) then) =
      __$$_CellCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? denomination, String? amount});
}

/// @nodoc
class __$$_CellCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res>
    implements _$$_CellCopyWith<$Res> {
  __$$_CellCopyWithImpl(_$_Cell _value, $Res Function(_$_Cell) _then)
      : super(_value, (v) => _then(v as _$_Cell));

  @override
  _$_Cell get _value => super._value as _$_Cell;

  @override
  $Res call({
    Object? id = freezed,
    Object? denomination = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Cell(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      denomination: denomination == freezed
          ? _value.denomination
          : denomination // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cell implements _Cell {
  const _$_Cell(
      {required this.id, required this.denomination, required this.amount});

  factory _$_Cell.fromJson(Map<String, dynamic> json) => _$$_CellFromJson(json);

  @override
  final int id;
  @override
  final String? denomination;
  @override
  final String? amount;

  @override
  String toString() {
    return 'Cell(id: $id, denomination: $denomination, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cell &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.denomination, denomination) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(denomination),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_CellCopyWith<_$_Cell> get copyWith =>
      __$$_CellCopyWithImpl<_$_Cell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellToJson(
      this,
    );
  }
}

abstract class _Cell implements Cell {
  const factory _Cell(
      {required final int id,
      required final String? denomination,
      required final String? amount}) = _$_Cell;

  factory _Cell.fromJson(Map<String, dynamic> json) = _$_Cell.fromJson;

  @override
  int get id;
  @override
  String? get denomination;
  @override
  String? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_CellCopyWith<_$_Cell> get copyWith => throw _privateConstructorUsedError;
}
