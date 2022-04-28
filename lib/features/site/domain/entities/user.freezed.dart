// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(Person person, Resume resume, PortfolioWrapper portfolio) {
    return _User(
      person,
      resume,
      portfolio,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  Person get person => throw _privateConstructorUsedError;
  Resume get resume => throw _privateConstructorUsedError;
  PortfolioWrapper get portfolio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({Person person, Resume resume, PortfolioWrapper portfolio});

  $PersonCopyWith<$Res> get person;
  $ResumeCopyWith<$Res> get resume;
  $PortfolioWrapperCopyWith<$Res> get portfolio;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? person = freezed,
    Object? resume = freezed,
    Object? portfolio = freezed,
  }) {
    return _then(_value.copyWith(
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      resume: resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as Resume,
      portfolio: portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as PortfolioWrapper,
    ));
  }

  @override
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }

  @override
  $ResumeCopyWith<$Res> get resume {
    return $ResumeCopyWith<$Res>(_value.resume, (value) {
      return _then(_value.copyWith(resume: value));
    });
  }

  @override
  $PortfolioWrapperCopyWith<$Res> get portfolio {
    return $PortfolioWrapperCopyWith<$Res>(_value.portfolio, (value) {
      return _then(_value.copyWith(portfolio: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({Person person, Resume resume, PortfolioWrapper portfolio});

  @override
  $PersonCopyWith<$Res> get person;
  @override
  $ResumeCopyWith<$Res> get resume;
  @override
  $PortfolioWrapperCopyWith<$Res> get portfolio;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? person = freezed,
    Object? resume = freezed,
    Object? portfolio = freezed,
  }) {
    return _then(_User(
      person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      resume == freezed
          ? _value.resume
          : resume // ignore: cast_nullable_to_non_nullable
              as Resume,
      portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as PortfolioWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(this.person, this.resume, this.portfolio);

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final Person person;
  @override
  final Resume resume;
  @override
  final PortfolioWrapper portfolio;

  @override
  String toString() {
    return 'User(person: $person, resume: $resume, portfolio: $portfolio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.person, person) &&
            const DeepCollectionEquality().equals(other.resume, resume) &&
            const DeepCollectionEquality().equals(other.portfolio, portfolio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(person),
      const DeepCollectionEquality().hash(resume),
      const DeepCollectionEquality().hash(portfolio));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      Person person, Resume resume, PortfolioWrapper portfolio) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  Person get person;
  @override
  Resume get resume;
  @override
  PortfolioWrapper get portfolio;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
