import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  const CustomTextFormField({super.key, required this.hint}); // required : must

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "${hint}", // null 안정성을 위해 문자열로
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
    );
  }
}
