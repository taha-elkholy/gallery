import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery/features/auth/domain/entities/user.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates with _$AuthStates {
  const factory AuthStates.initial() = AuthInitialState;

  const factory AuthStates.loading() = AuthLoadingState;

  const factory AuthStates.loaded({required User user}) = AuthLoadedState;

  const factory AuthStates.error({required String errorMessage}) =
      AuthErrorState;
}
