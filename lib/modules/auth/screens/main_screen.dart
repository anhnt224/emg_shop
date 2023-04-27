import 'package:emg_shop/bloc/app_cubit.dart';
import 'package:emg_shop/bloc/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/user.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Center(
            child: Text(state.user.toString()),
          );
        },
      ),
    );
  }
}
