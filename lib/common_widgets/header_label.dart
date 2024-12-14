import 'package:flutter/material.dart';

class HeaderLabel extends StatelessWidget {
  final String header;
  final String? subHeader;
  final String? para;
  final double? headFontSize;
  final double? subHeaderFontSize;
  final TextStyle? headerStyle;
  final TextStyle? subHeaderStyle;
  final bool centerAlign;
  final MainAxisAlignment mainAxisAlignment;
  const HeaderLabel({super.key, required this.header, this.subHeader, this.para, this.headFontSize, this.subHeaderFontSize, this.headerStyle, this.subHeaderStyle, this.centerAlign = false, this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: centerAlign == true ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(header, style: headerStyle ?? Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: headFontSize ?? 24, fontWeight: FontWeight.w500, color: Colors.black)),
        if (subHeader != null) ...[
          const SizedBox(height: 5),
          Text(subHeader ?? "", style: subHeaderStyle ?? Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: subHeaderFontSize ?? 12, fontWeight: FontWeight.w400, color: Colors.black)),
        ],
        if (para != null) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(para ?? "", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),
            ],
          ),
        ],
      ],
    );
  }
}
