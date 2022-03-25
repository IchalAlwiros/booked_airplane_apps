import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/cubit/screen_cubit.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFiled) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: redColor,
              content: Text(state.error),
            ),
          );
        } else if (state is AuthInitial) {
          context.read<ScreenCubit>().setPage(
              0); //NOTE : Untuk menampilkan kembali pada page ke 0 setelah di signout di page ke 3 agar tampilan berada di home
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-up', (route) => false);
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return Center(
          child: CustomButtons(
            title: 'SIgn Out',
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            width: 220,
          ),
        );
      },
    );
  }
}
