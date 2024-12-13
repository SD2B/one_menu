import 'package:flutter/material.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final TextStyle? style;
  final Buttontype type;
  final Function onTap;
  final bool isLoading;
  const CustomButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    this.style,
    required this.type,
    required this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: width == null ? Expanded(child: CustomButtonCard(width: width, height: height, type: type, text: text, isLoading: isLoading)) : CustomButtonCard(width: width, height: height, type: type, text: text, isLoading: isLoading),
    );
  }
}

class CustomButtonCard extends StatelessWidget {
  final double? width;
  final double? height;
  final Buttontype type;
  final String text;
  final TextStyle? style;
  final bool isLoading;

  const CustomButtonCard({
    super.key,
    required this.width,
    required this.height,
    required this.type,
    required this.text,
    this.style,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SizedBox(height: height ?? 40, width: width, child: const LoadingWidget())
        : Container(
            height: height ?? 40,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _fromType(type),
            ),
            child: Center(
              child: Text(
                text,
                style: style ??
                    Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: _fromTypeForText(type),
                          fontWeight: FontWeight.w500,
                        ),
              ),
            ),
          );
  }
}

enum Buttontype { primary, secondary }

Color _fromType(Buttontype type) {
  Color color = Colors.white;
  if (type == Buttontype.primary) {
    return const Color(0xFFE83D3D);
  } else if (type == Buttontype.secondary) {
    return Colors.grey[300]!;
  }
  return color;
}

Color _fromTypeForText(Buttontype type) {
  Color color = Colors.white;
  if (type == Buttontype.primary) {
    return Colors.white;
  } else if (type == Buttontype.secondary) {
    return Colors.black;
  }
  return color;
}
