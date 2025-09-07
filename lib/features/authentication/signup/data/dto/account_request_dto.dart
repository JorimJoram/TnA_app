import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/authentication/signup/data/dto/account_request_dto.freezed.dart';
part '../../../../generated/authentication/signup/data/dto/account_request_dto.g.dart';

@freezed
sealed class AccountRequestDto with _$AccountRequestDto {
  factory AccountRequestDto({
    String? username,
    String? password,
    String? name,
    String? email,
  }) = _AccountRequestDto;

  factory AccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AccountRequestDtoFromJson(json);
}
