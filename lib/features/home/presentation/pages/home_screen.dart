import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/home_view.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.user});
  final UsersModel user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(

        // Add data to bloc
        create: (context) => HomeBloc()..add(InitEvent(user)),
        
        child: const HomeView(),
      ),
    );
  }
}
