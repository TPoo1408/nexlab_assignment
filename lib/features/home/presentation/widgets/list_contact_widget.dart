import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/contact_item.dart';

class ListContactWidget extends StatelessWidget {
  const ListContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator(color: AppColor.redBold,)));
          },
          loading: () {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator(color: AppColor.redBold,)));
          },
          loaded: (user, message) {
            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              sliver: SliverList.separated(
                itemCount: user.contactUsers?.length ?? 0,
                itemBuilder: (context, index) {
                  final contactUser = user.contactUsers![index];
                  return ContactItem(contact: contactUser);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              ),
            );
          },
        );
      },
    );
  }
}
