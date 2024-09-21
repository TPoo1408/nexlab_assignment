import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/home_view.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.user});
  final UsersModel user;

  final _bloc = getIt<HomeBloc>();

  @override
  StatelessElement createElement() {
    _bloc.add(InitEvent(user));
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => _bloc,
        child: const HomeView(),
      ),
    );
  }
}
