import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/authentication/signin/data/dto/signin_request_dto.freezed.dart';
part '../../../../generated/authentication/signin/data/dto/signin_request_dto.g.dart';

@freezed
sealed class SigninRequestDto with _$SigninRequestDto {
  factory SigninRequestDto({String? username, String? password}) =
      _SigninRequestDto;

  factory SigninRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SigninRequestDtoFromJson(json);
}
