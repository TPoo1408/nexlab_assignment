import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/login/presentation/bloc/login_bloc.dart';
import 'package:nexlab_assignment/features/login/presentation/bloc/login_state_event.dart';
import 'package:nexlab_assignment/shared/presentation/widgets/m_text_field.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get height device
    final sizeHeightDevice = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => LoginBloc(getIt()),
      child: Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            // Check state to navigate
            if (state is LoginSuccessState) {
              NavigatorUtil.pushNamedAndRemoveUntil(
                  route: AppRoute.homeScreen,
                  args: {"isUserModel": state.user});
            } else if (state is LoginErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: sizeHeightDevice * 0.1),

                Text(
                  "Hello,",
                  style: AppStyle.boldStyle(fontSize: 24),
                ),

                const SizedBox(height: 8),

                Text(
                  "Sign in with test phone number to use app",
                  style: AppStyle.regularStyle(fontSize: 16),
                ),

                SizedBox(height: sizeHeightDevice * 0.2),

                // Login Field
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return MTextField(
                      controller: phoneController,
                      hintText: "Number phone",
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      readOnly: state is LoginLoadingState,
                    );
                  },
                ),

                const SizedBox(height: 10),

                // Login Button
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        state is! LoginLoadingState
                            ? context
                                .read<LoginBloc>()
                                .add(OnLoginEvent(phoneController.text))
                            : null;
                      },
                      child: Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppColor.greyBorder, width: 1),
                            color: AppColor.primaryColor),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: state is LoginLoadingState
                            ? const Center(
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                ),
                              )
                            : Text(
                                "LOGIN",
                                style: AppStyle.regularStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                      ),
                    );
                  },
                ),

                SizedBox(height: sizeHeightDevice * 0.3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
