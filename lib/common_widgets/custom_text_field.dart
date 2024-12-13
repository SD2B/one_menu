import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:one_menu/core/colors.dart';

class CustomTextField extends HookWidget {
  final double? width;
  final double? height;
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;

  const CustomTextField({
    super.key,
    this.width,
    this.height,
    required this.controller,
    required this.hintText,
    this.label,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.inputFormatters,
    this.isPassword = false,
    this.validator,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);
    final errorText = useState<String?>(null);

    return SizedBox(
      width: width,
      height: errorText.value == null ? height ?? 44 : 70, // Adjust height only when error is present
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        focusNode: focusNode,
        obscureText: isPassword ? obscureText.value : false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xffA8B1BE),
              ),
          labelText: label,
          labelStyle: Theme.of(context).textTheme.bodySmall,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey[100]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorCode.colorList(context).primary!,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorCode.colorList(context).borderColor!,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 12,
                color: Colors.red,
              ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    obscureText.value = !obscureText.value;
                  },
                )
              : null,
        ),
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        cursorColor: ColorCode.colorList(context).primary,
        validator: (value) {
          final validationResult = validator?.call(value);
          errorText.value = validationResult; // Update errorText state
          return validationResult;
        },
      ),
    );
  }
}
