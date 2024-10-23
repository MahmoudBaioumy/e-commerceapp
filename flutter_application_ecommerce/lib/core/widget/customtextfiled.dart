import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/core/utils/app_Colors.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({
    super.key,
    required this.hint,
    required this.icon,
  });
  final String hint;
  final IconData icon;
  String? errorMessages(String str) {
    switch (hint) {
      case 'Enter Your Name':
        return 'Name is Empty!';
      case 'Enter Your Email':
        return 'Email is Empty!';
      case 'Enter Your Password':
        return 'Password is Empty!';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return errorMessages(hint);
          }
          return null;
        },
        cursorColor: AppColor.backgrocolor,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: AppColor.backgrocolor,
          ),
          filled: true,
          fillColor: AppColor.textformcolor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
