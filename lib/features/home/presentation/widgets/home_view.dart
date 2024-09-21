import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/contact_bottom_sheet.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/list_contact_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blueBackground,
        onPressed: () {
          _showAddContactBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeLoadedState && state.message != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: 100.0,
                  floating: false,
                  scrolledUnderElevation: 0,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.symmetric(horizontal: 16),
                    title: Text(
                      "My Contact",
                      style: AppStyle.boldStyle(fontSize: 22),
                    ),
                  ),
                ),
                const ListContactWidget(),
              ],
            ),
            Positioned(
              top: 16,
              right: 8,
              child: IconButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const LogoutEvent());
                },
                icon: const Icon(Icons.logout),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showAddContactBottomSheet(BuildContext parentContext) {
    showModalBottomSheet(
      context: parentContext,
      builder: (_) {
        return ContactBottomSheet(
          onPressSaveButton: (contact) {
            parentContext.read<HomeBloc>().add(AddContactEvent(contact));
          },
        );
      },
    );
  }
}
