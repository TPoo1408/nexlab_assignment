import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';

class ConfirmDeleteContact extends StatelessWidget {
  const ConfirmDeleteContact({super.key, required this.contact, required this.parentContext});
  final ContactUserModel contact;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: parentContext.read<HomeBloc>(),
      child: AlertDialog(
        backgroundColor: Colors.white,
        title: const Text("Delete Confirmation"),
        content: const Text("Are you sure you want to delete this contact?"),
        actions: <Widget>[
          TextButton(
            onPressed: () => NavigatorUtil.pop(result: false),
            child: Text(
              "Cancel",
              style: AppStyle.regularStyle(color: AppColor.greenBackground),
            ),
          ),
          TextButton(
            onPressed: () {
              parentContext.read<HomeBloc>().add(DeleteContactEvent(contact));
            },
            child: Text(
              "Delete",
              style: AppStyle.regularStyle(color: AppColor.redBold),
            ),
          ),
        ],
      ),
    );
  }
}
