import 'package:flutter/material.dart';
import 'package:flutter_task_1/core/constants/app_strings.dart';
import 'package:flutter_task_1/core/utils/validators.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void validateLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppStrings.loginSuccess),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }
}
