import 'package:services/common_widget/size.dart';
import 'package:services/common_widget/text.dart';
import 'package:flutter/material.dart';

import 'color.dart';
import 'hex_color.dart';

final OutlineInputBorder border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: textFieldColor, width: 0),
);

class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController textController;
  final bool? isNumber = false;
  final int? lines;
  final bool? passwordHide;
  final void Function()? suffixButton;
  final String? Function(String?)? validators;
  final void Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final bool? readOnly;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  const CustomTextField({
    Key? key,
    required this.title,
    required this.textController,
    this.passwordHide,
    this.validators,
    this.onChanged,
    this.autovalidateMode,
    this.suffixButton,
    this.readOnly,
    this.onTap,
    this.lines,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines ?? 1,
      controller: textController,
      obscureText: passwordHide ?? false,
      keyboardType: keyboardType,
      textCapitalization: passwordHide == null
          ? TextCapitalization.sentences
          : TextCapitalization.none,
      validator: validators,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: textStyle(
          color: textGreayColor,
          weight: FontWeight.w400,
        ),
        counterText: '',
        contentPadding: edgeAll(16),
        border: border,
        disabledBorder: border,
        enabledBorder: border,
        focusedBorder: border,
        fillColor: textFieldColor,
        filled: true,
        suffixIcon: passwordHide != null
            ? IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.remove_red_eye,
                  color: passwordHide! ? Colors.grey : textGreayColor,
                  size: 20,
                ),
                onPressed: suffixButton,
              )
            : null,
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final String title;
  final TextEditingController textController;
  final void Function(String)? onChanged;
  const SearchTextField({
    Key? key,
    required this.title,
    required this.textController,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: textGreayColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: textController,
              keyboardType: TextInputType.text,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: title,
                hintStyle: textStyle(
                  color: textGreayColor,
                  weight: FontWeight.w400,
                ),
                counterText: '',
                border: border,
                disabledBorder: border,
                enabledBorder: border,
                focusedBorder: border,
                contentPadding: edgeAll(10),
                filled: true,
                fillColor: textFieldColor,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: textGreayColor,
          ),
          width(5),
        ],
      ),
    );
  }
}
