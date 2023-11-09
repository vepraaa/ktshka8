import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_model.freezed.dart';
part 'jwt_model.g.dart';

@freezed
class JWTModel with _$JWTModel {

  factory JWTModel(
    String? accessToken,
    String refreshToken,
  ) = _JWTModel;

  factory JWTModel.fromJson(Map<String, dynamic> json) => _$JWTModelFromJson(json);
}