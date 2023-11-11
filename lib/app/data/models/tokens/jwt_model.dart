import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_model.freezed.dart';
part 'jwt_model.g.dart';

@freezed
class JwtModel with _$JwtModel {

  factory JwtModel(
    String? accessToken,
    String refreshToken,
  ) = _JwtModel;

  factory JwtModel.fromJson(Map<String, dynamic> json) => _$JwtModelFromJson(json);
}