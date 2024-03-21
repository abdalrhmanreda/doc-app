import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api/api_error_handler.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial<T>;
  const factory LoginState.loading() = Loading<T>;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.failure(String error) = Failure<T>;
}
