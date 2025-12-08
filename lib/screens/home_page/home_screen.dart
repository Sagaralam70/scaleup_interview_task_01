import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_1/core/constants/app_strings.dart';
import 'package:flutter_task_1/core/utils/validators.dart';
import 'package:flutter_task_1/screens/home_page/home_screen_controller/home_screen_controller.dart';
import 'package:flutter_task_1/widgets/custom_button/custom_button.dart';
import 'package:flutter_task_1/widgets/custom_text_field/custom_text_field.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: controller.formKey, // ✅ use controller's formKey
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      controller: controller.emailController, // controller field
                      hint: AppStrings.email,
                      validator: Validators.validateEmail,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: controller.passwordController, // controller field
                      hint: AppStrings.password,
                      obscure: true,
                      validator: Validators.validatePassword,
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: AppStrings.login,
                      onTap: () => controller.validateLogin(context), // call controller method
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
