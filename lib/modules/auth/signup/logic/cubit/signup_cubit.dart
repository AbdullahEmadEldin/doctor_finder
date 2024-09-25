import 'package:doctor_finder/core/constants/enums.dart';
import 'package:doctor_finder/core/helpers/extensions.dart';
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
        name: '',
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: gender == Gender.male ? 0 : 1,
      ),
    );
    result.whenOrNull(
      success: (data) => emit(SignupState.success(data)),
      failure: (errorModel) => emit(
        SignupState.failure(
          message: errorModel.errorDetails.isNullOrEmpty()
              ? errorModel.message
              : errorModel.errorDetails!,
        ),
      ),
    );
  }
}
