// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skill_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillWrapper _$SkillWrapperFromJson(Map<String, dynamic> json) {
  return _SkillWrapper.fromJson(json);
}

/// @nodoc
class _$SkillWrapperTearOff {
  const _$SkillWrapperTearOff();

  _SkillWrapper call(
      List<Skill> languages, List<Skill> tech, List<Skill> prog) {
    return _SkillWrapper(
      languages,
      tech,
      prog,
    );
  }

  SkillWrapper fromJson(Map<String, Object?> json) {
    return SkillWrapper.fromJson(json);
  }
}

/// @nodoc
const $SkillWrapper = _$SkillWrapperTearOff();

/// @nodoc
mixin _$SkillWrapper {
  List<Skill> get languages => throw _privateConstructorUsedError;
  List<Skill> get tech => throw _privateConstructorUsedError;
  List<Skill> get prog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillWrapperCopyWith<SkillWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillWrapperCopyWith<$Res> {
  factory $SkillWrapperCopyWith(
          SkillWrapper value, $Res Function(SkillWrapper) then) =
      _$SkillWrapperCopyWithImpl<$Res>;
  $Res call({List<Skill> languages, List<Skill> tech, List<Skill> prog});
}

/// @nodoc
class _$SkillWrapperCopyWithImpl<$Res> implements $SkillWrapperCopyWith<$Res> {
  _$SkillWrapperCopyWithImpl(this._value, this._then);

  final SkillWrapper _value;
  // ignore: unused_field
  final $Res Function(SkillWrapper) _then;

  @override
  $Res call({
    Object? languages = freezed,
    Object? tech = freezed,
    Object? prog = freezed,
  }) {
    return _then(_value.copyWith(
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      tech: tech == freezed
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      prog: prog == freezed
          ? _value.prog
          : prog // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ));
  }
}

/// @nodoc
abstract class _$SkillWrapperCopyWith<$Res>
    implements $SkillWrapperCopyWith<$Res> {
  factory _$SkillWrapperCopyWith(
          _SkillWrapper value, $Res Function(_SkillWrapper) then) =
      __$SkillWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<Skill> languages, List<Skill> tech, List<Skill> prog});
}

/// @nodoc
class __$SkillWrapperCopyWithImpl<$Res> extends _$SkillWrapperCopyWithImpl<$Res>
    implements _$SkillWrapperCopyWith<$Res> {
  __$SkillWrapperCopyWithImpl(
      _SkillWrapper _value, $Res Function(_SkillWrapper) _then)
      : super(_value, (v) => _then(v as _SkillWrapper));

  @override
  _SkillWrapper get _value => super._value as _SkillWrapper;

  @override
  $Res call({
    Object? languages = freezed,
    Object? tech = freezed,
    Object? prog = freezed,
  }) {
    return _then(_SkillWrapper(
      languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      tech == freezed
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      prog == freezed
          ? _value.prog
          : prog // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SkillWrapper implements _SkillWrapper {
  const _$_SkillWrapper(this.languages, this.tech, this.prog);

  factory _$_SkillWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_SkillWrapperFromJson(json);

  @override
  final List<Skill> languages;
  @override
  final List<Skill> tech;
  @override
  final List<Skill> prog;

  @override
  String toString() {
    return 'SkillWrapper(languages: $languages, tech: $tech, prog: $prog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillWrapper &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            const DeepCollectionEquality().equals(other.tech, tech) &&
            const DeepCollectionEquality().equals(other.prog, prog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(languages),
      const DeepCollectionEquality().hash(tech),
      const DeepCollectionEquality().hash(prog));

  @JsonKey(ignore: true)
  @override
  _$SkillWrapperCopyWith<_SkillWrapper> get copyWith =>
      __$SkillWrapperCopyWithImpl<_SkillWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillWrapperToJson(this);
  }
}

abstract class _SkillWrapper implements SkillWrapper {
  const factory _SkillWrapper(
          List<Skill> languages, List<Skill> tech, List<Skill> prog) =
      _$_SkillWrapper;

  factory _SkillWrapper.fromJson(Map<String, dynamic> json) =
      _$_SkillWrapper.fromJson;

  @override
  List<Skill> get languages;
  @override
  List<Skill> get tech;
  @override
  List<Skill> get prog;
  @override
  @JsonKey(ignore: true)
  _$SkillWrapperCopyWith<_SkillWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
