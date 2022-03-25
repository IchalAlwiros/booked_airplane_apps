import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController(text: '');

  final TextEditingController emailController = TextEditingController(text: '');

  final TextEditingController paswwordController =
      TextEditingController(text: '');

  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
          controller: nameController,
          validator: (value) {
            RegExp regex = new RegExp(r'^.{3,}$');
            if (value!.isEmpty) {
              return ('Name is required!');
            }
            if (!regex.hasMatch(value)) {
              return ('Enter valid name (Min. 3 Character)');
            }
            return null;
          },
        );
      }

      Widget emailInput() {
        return CustomFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return ("Please Enter Your Email");
            }
            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                .hasMatch(value)) {
              return ("Please Enter a valid email");
            }
            return null;
          },
        );
      }

      Widget passwordInput() {
        return CustomFormField(
          title: 'Password',
          hintText: 'Your full name',
          obsecureText: true,
          controller: paswwordController,
          validator: (value) {
            RegExp regex = new RegExp(r'^.{6,}$');
            if (value!.isEmpty) {
              return ("Password is required for login");
            }
            if (!regex.hasMatch(value)) {
              return ("Enter Valid Password(Min. 6 Character)");
            } else {
              return null;
            }
          },
        );
      }

      Widget hobbyInput() {
        return CustomFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFiled) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: redColor,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButtons(
                title: 'Get Started',
                width: double.infinity,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    context.read<AuthCubit>().signUp(
                          email: emailController.text,
                          password: paswwordController.text,
                          name: nameController.text,
                          hobby: hobbyController.text,
                        );
                  }
                });
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget signInButton() {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Hava an account? Sign In',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              title(),
              inputSection(),
              signInButton(),
            ],
          ),
        ),
      ),
    );
  }
}
