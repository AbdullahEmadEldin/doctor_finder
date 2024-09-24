import 'package:doctor_finder/core/constants/constants.dart';
import 'package:doctor_finder/core/services/networking/dio_comsumer.dart';
import 'package:doctor_finder/modules/auth/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/cache/cache_helper.dart';
import '../../data/models/login_request_body.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  /// UI logic handling
  ///
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool rememberMe = false;
  ///
  Future<void> login() async {
    emit(const LoginState.loading());
    final res = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    res.when(success: (loginResponse) async {
      await _saveUserToken(loginResponse.data?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(message: error.apiErrorModel.message));
    });
  }

  Future<void> _saveUserToken(String token) async {
    await CacheHelper.setSecuredString(key: SharedPrefKeys.token, value: token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
