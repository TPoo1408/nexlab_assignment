import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/login/presentation/bloc/login_bloc.dart';
import 'package:nexlab_assignment/features/login/presentation/bloc/login_state_event.dart';
import 'package:nexlab_assignment/features/splash/presentation/widgets/m_text_field.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _bloc = getIt<LoginBloc>();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sizeHeightDevice = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
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
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                      "Sign in the app with test phone number",
                      style: AppStyle.regularStyle(fontSize: 16),
                    ),
                    SizedBox(height: sizeHeightDevice * 0.2),
                    MTextField(
                      controller: phoneController,
                      hintText: "Number phone",
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      readOnly: state is LoginLoadingState,
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        state is! LoginLoadingState
                            ? _bloc.add(OnLoginEvent(phoneController.text))
                            : null;
                      },
                      child: Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppColor.greyBorder, width: 1),
                            color: AppColor.redBold),
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
                                "Đăng nhập",
                                style: AppStyle.regularStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                      ),
                    ),
                    SizedBox(height: sizeHeightDevice * 0.3),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
