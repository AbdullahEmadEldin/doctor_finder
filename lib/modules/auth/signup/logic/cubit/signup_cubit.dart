import 'package:doctor_finder/core/constants/enums.dart';
import 'package:doctor_finder/modules/auth/signup/data/model/signup_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/signup_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  Gender? gender;

  ///
  Future<void> signUp() async {
    emit(const SignupState.loading());
    final result = await _signupRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender:gender == Gender.male ? 0 :  1,
      ),
    );
    result.whenOrNull(
      success: (data) => emit(SignupState.success(data)),
      failure: (errorHandler) => emit(SignupState.failure(
          message: errorHandler.errorDetails ??
              errorHandler.message)),
    );
  }
}
