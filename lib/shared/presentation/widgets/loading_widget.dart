import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColor.primaryColor,
      ),
    );
  }
}