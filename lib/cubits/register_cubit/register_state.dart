part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

class RegisterSuccess extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterFailure extends RegisterState {
  String errMessage;

  RegisterFailure({required this.errMessage});
}

class ObscureText extends RegisterState {}
