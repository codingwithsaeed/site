// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call(String name, String startYear, String endYear,
      String startMonth, String endMonth, String description, String link) {
    return _Project(
      name,
      startYear,
      endYear,
      startMonth,
      endMonth,
      description,
      link,
    );
  }

  Project fromJson(Map<String, Object?> json) {
    return Project.fromJson(json);
  }
}

/// @nodoc
const $Project = _$ProjectTearOff();

/// @nodoc
mixin _$Project {
  String get name => throw _privateConstructorUsedError;
  String get startYear => throw _privateConstructorUsedError;
  String get endYear => throw _privateConstructorUsedError;
  String get startMonth => throw _privateConstructorUsedError;
  String get endMonth => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String startYear,
      String endYear,
      String startMonth,
      String endMonth,
      String description,
      String link});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? startMonth = freezed,
    Object? endMonth = freezed,
    Object? description = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      startMonth: startMonth == freezed
          ? _value.startMonth
          : startMonth // ignore: cast_nullable_to_non_nullable
              as String,
      endMonth: endMonth == freezed
          ? _value.endMonth
          : endMonth // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String startYear,
      String endYear,
      String startMonth,
      String endMonth,
      String description,
      String link});
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object? name = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? startMonth = freezed,
    Object? endMonth = freezed,
    Object? description = freezed,
    Object? link = freezed,
  }) {
    return _then(_Project(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as String,
      endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as String,
      startMonth == freezed
          ? _value.startMonth
          : startMonth // ignore: cast_nullable_to_non_nullable
              as String,
      endMonth == freezed
          ? _value.endMonth
          : endMonth // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(this.name, this.startYear, this.endYear, this.startMonth,
      this.endMonth, this.description, this.link);

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String name;
  @override
  final String startYear;
  @override
  final String endYear;
  @override
  final String startMonth;
  @override
  final String endMonth;
  @override
  final String description;
  @override
  final String link;

  @override
  String toString() {
    return 'Project(name: $name, startYear: $startYear, endYear: $endYear, startMonth: $startMonth, endMonth: $endMonth, description: $description, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Project &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality()
                .equals(other.startMonth, startMonth) &&
            const DeepCollectionEquality().equals(other.endMonth, endMonth) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(startMonth),
      const DeepCollectionEquality().hash(endMonth),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(this);
  }
}

abstract class _Project implements Project {
  const factory _Project(
      String name,
      String startYear,
      String endYear,
      String startMonth,
      String endMonth,
      String description,
      String link) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get name;
  @override
  String get startYear;
  @override
  String get endYear;
  @override
  String get startMonth;
  @override
  String get endMonth;
  @override
  String get description;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$ProjectCopyWith<_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
