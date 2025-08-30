//import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/authentication/signin/data/account.freezed.dart';
part '../../../generated/authentication/signin/data/account.g.dart';

@freezed
sealed class Account with _$Account {
  factory Account({
    required String username,
    required String password,
    required String name,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
