import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final bool obsecureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? index;

  const CustomFormField({
    Key? key,
    @required this.title,
    @required this.hintText,
    required this.controller,
    this.index,
    this.validator,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            cursorColor: blackColor,
            obscureText: obsecureText,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
