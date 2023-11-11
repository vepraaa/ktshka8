// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JwtModel _$JwtModelFromJson(Map<String, dynamic> json) {
  return _JwtModel.fromJson(json);
}

/// @nodoc
mixin _$JwtModel {
  String? get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtModelCopyWith<JwtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtModelCopyWith<$Res> {
  factory $JwtModelCopyWith(JwtModel value, $Res Function(JwtModel) then) =
      _$JwtModelCopyWithImpl<$Res, JwtModel>;
  @useResult
  $Res call({String? accessToken, String refreshToken});
}

/// @nodoc
class _$JwtModelCopyWithImpl<$Res, $Val extends JwtModel>
    implements $JwtModelCopyWith<$Res> {
  _$JwtModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtModelImplCopyWith<$Res>
    implements $JwtModelCopyWith<$Res> {
  factory _$$JwtModelImplCopyWith(
          _$JwtModelImpl value, $Res Function(_$JwtModelImpl) then) =
      __$$JwtModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String refreshToken});
}

/// @nodoc
class __$$JwtModelImplCopyWithImpl<$Res>
    extends _$JwtModelCopyWithImpl<$Res, _$JwtModelImpl>
    implements _$$JwtModelImplCopyWith<$Res> {
  __$$JwtModelImplCopyWithImpl(
      _$JwtModelImpl _value, $Res Function(_$JwtModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = null,
  }) {
    return _then(_$JwtModelImpl(
      freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtModelImpl implements _JwtModel {
  _$JwtModelImpl(this.accessToken, this.refreshToken);

  factory _$JwtModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtModelImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'JwtModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtModelImplCopyWith<_$JwtModelImpl> get copyWith =>
      __$$JwtModelImplCopyWithImpl<_$JwtModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtModelImplToJson(
      this,
    );
  }
}

abstract class _JwtModel implements JwtModel {
  factory _JwtModel(final String? accessToken, final String refreshToken) =
      _$JwtModelImpl;

  factory _JwtModel.fromJson(Map<String, dynamic> json) =
      _$JwtModelImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JwtModelImplCopyWith<_$JwtModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
