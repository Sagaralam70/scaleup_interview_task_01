import 'package:flutter/material.dart';
import 'package:flutter_task_1/core/constants/app_colors.dart';
import 'package:flutter_task_1/core/constants/app_strings.dart';
import 'package:flutter_task_1/core/utils/validators.dart';
import 'package:flutter_task_1/screens/home_page/home_screen_controller/home_screen_controller.dart';
import 'package:flutter_task_1/widgets/custom_button/custom_button.dart';
import 'package:flutter_task_1/widgets/custom_container_design/custom_container.dart';
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
          body: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///<<<<<this is for Custom Container design>>>>>>>>
                  CustomContainer(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    height: 150,
                    width: double.maxFinite,
                    color: Colors.blue,
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 85),
                            ///<<<<<customise the Custom Container>>>>>>>
                            child: Text(
                              AppStrings.loginPage,
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.notification_add,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),

                  ///<<<<<<<<<<this is for email text field>>>>>>>>>>
                  Padding(
                    padding: EdgeInsets.only(top: 180, left: 12, right: 12),
                    child: CustomTextField(
                      ///<<<<<<<<this is for controller field>>>>>>>>>
                      controller: controller.emailController,
                      hint: AppStrings.email,
                      validator: Validators.validateEmail,
                    ),
                  ),

                  SizedBox(height: 20),

                  ///<<<<<<<<<<this is for password field>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomTextField(
                      controller: controller.passwordController,

                      hint: AppStrings.password,
                      obscure: true,
                      validator: Validators.validatePassword,
                    ),
                  ),

                  SizedBox(height: 30),

                  ///<<<<<<<<<<this is for elevated button>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(
                      text: AppStrings.login,
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      color: AppColors.blue,
                      onTap: () => controller.validateLogin(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
