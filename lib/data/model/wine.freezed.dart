// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wine _$WineFromJson(Map<String, dynamic> json) {
  return _Wine.fromJson(json);
}

/// @nodoc
mixin _$Wine {
  @JsonKey(name: '')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WineCopyWith<Wine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WineCopyWith<$Res> {
  factory $WineCopyWith(Wine value, $Res Function(Wine) then) =
      _$WineCopyWithImpl<$Res, Wine>;
  @useResult
  $Res call({@JsonKey(name: '') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$WineCopyWithImpl<$Res, $Val extends Wine>
    implements $WineCopyWith<$Res> {
  _$WineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WineCopyWith<$Res> implements $WineCopyWith<$Res> {
  factory _$$_WineCopyWith(_$_Wine value, $Res Function(_$_Wine) then) =
      __$$_WineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_WineCopyWithImpl<$Res> extends _$WineCopyWithImpl<$Res, _$_Wine>
    implements _$$_WineCopyWith<$Res> {
  __$$_WineCopyWithImpl(_$_Wine _value, $Res Function(_$_Wine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Wine(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wine implements _Wine {
  _$_Wine(@JsonKey(name: '') this.id, @JsonKey(name: 'name') this.name);

  factory _$_Wine.fromJson(Map<String, dynamic> json) => _$$_WineFromJson(json);

  @override
  @JsonKey(name: '')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'Wine(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WineCopyWith<_$_Wine> get copyWith =>
      __$$_WineCopyWithImpl<_$_Wine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WineToJson(
      this,
    );
  }
}

abstract class _Wine implements Wine {
  factory _Wine(@JsonKey(name: '') final int id,
      @JsonKey(name: 'name') final String name) = _$_Wine;

  factory _Wine.fromJson(Map<String, dynamic> json) = _$_Wine.fromJson;

  @override
  @JsonKey(name: '')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_WineCopyWith<_$_Wine> get copyWith => throw _privateConstructorUsedError;
}
