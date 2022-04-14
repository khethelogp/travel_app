import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/screens/detail_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/navscreens/main_screen.dart';
import 'package:travel_app/screens/welcome/welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (ctx, state) {
        if (state is WelcomeState) {
          return const WelcomeScreen();
        }
        if (state is DetailState) {
          return DetailScreen();
        }
        if (state is LoadedState) {
          return MainScreen();
        }
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Container();
        }
      }),
    );
  }
}
