// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortfolioWrapper _$PortfolioWrapperFromJson(Map<String, dynamic> json) {
  return _PortfolioWrapper.fromJson(json);
}

/// @nodoc
class _$PortfolioWrapperTearOff {
  const _$PortfolioWrapperTearOff();

  _PortfolioWrapper call(List<Portfolio> android, List<Portfolio> flutter) {
    return _PortfolioWrapper(
      android,
      flutter,
    );
  }

  PortfolioWrapper fromJson(Map<String, Object?> json) {
    return PortfolioWrapper.fromJson(json);
  }
}

/// @nodoc
const $PortfolioWrapper = _$PortfolioWrapperTearOff();

/// @nodoc
mixin _$PortfolioWrapper {
  List<Portfolio> get android => throw _privateConstructorUsedError;
  List<Portfolio> get flutter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioWrapperCopyWith<PortfolioWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioWrapperCopyWith<$Res> {
  factory $PortfolioWrapperCopyWith(
          PortfolioWrapper value, $Res Function(PortfolioWrapper) then) =
      _$PortfolioWrapperCopyWithImpl<$Res>;
  $Res call({List<Portfolio> android, List<Portfolio> flutter});
}

/// @nodoc
class _$PortfolioWrapperCopyWithImpl<$Res>
    implements $PortfolioWrapperCopyWith<$Res> {
  _$PortfolioWrapperCopyWithImpl(this._value, this._then);

  final PortfolioWrapper _value;
  // ignore: unused_field
  final $Res Function(PortfolioWrapper) _then;

  @override
  $Res call({
    Object? android = freezed,
    Object? flutter = freezed,
  }) {
    return _then(_value.copyWith(
      android: android == freezed
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
      flutter: flutter == freezed
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioWrapperCopyWith<$Res>
    implements $PortfolioWrapperCopyWith<$Res> {
  factory _$PortfolioWrapperCopyWith(
          _PortfolioWrapper value, $Res Function(_PortfolioWrapper) then) =
      __$PortfolioWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<Portfolio> android, List<Portfolio> flutter});
}

/// @nodoc
class __$PortfolioWrapperCopyWithImpl<$Res>
    extends _$PortfolioWrapperCopyWithImpl<$Res>
    implements _$PortfolioWrapperCopyWith<$Res> {
  __$PortfolioWrapperCopyWithImpl(
      _PortfolioWrapper _value, $Res Function(_PortfolioWrapper) _then)
      : super(_value, (v) => _then(v as _PortfolioWrapper));

  @override
  _PortfolioWrapper get _value => super._value as _PortfolioWrapper;

  @override
  $Res call({
    Object? android = freezed,
    Object? flutter = freezed,
  }) {
    return _then(_PortfolioWrapper(
      android == freezed
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
      flutter == freezed
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortfolioWrapper implements _PortfolioWrapper {
  const _$_PortfolioWrapper(this.android, this.flutter);

  factory _$_PortfolioWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_PortfolioWrapperFromJson(json);

  @override
  final List<Portfolio> android;
  @override
  final List<Portfolio> flutter;

  @override
  String toString() {
    return 'PortfolioWrapper(android: $android, flutter: $flutter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioWrapper &&
            const DeepCollectionEquality().equals(other.android, android) &&
            const DeepCollectionEquality().equals(other.flutter, flutter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(android),
      const DeepCollectionEquality().hash(flutter));

  @JsonKey(ignore: true)
  @override
  _$PortfolioWrapperCopyWith<_PortfolioWrapper> get copyWith =>
      __$PortfolioWrapperCopyWithImpl<_PortfolioWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortfolioWrapperToJson(this);
  }
}

abstract class _PortfolioWrapper implements PortfolioWrapper {
  const factory _PortfolioWrapper(
      List<Portfolio> android, List<Portfolio> flutter) = _$_PortfolioWrapper;

  factory _PortfolioWrapper.fromJson(Map<String, dynamic> json) =
      _$_PortfolioWrapper.fromJson;

  @override
  List<Portfolio> get android;
  @override
  List<Portfolio> get flutter;
  @override
  @JsonKey(ignore: true)
  _$PortfolioWrapperCopyWith<_PortfolioWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
