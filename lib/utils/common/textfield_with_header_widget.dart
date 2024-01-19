import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internshala_assignment/theme/app_decoration.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';

class TextFormFieldWithHeader extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?) validator;
  final void Function(String)? onChanged;
  final void Function(PointerDownEvent)? onTapOutside;
  final int? maxLines;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextInputFormatter? textInputFormatter;
  final bool? enabled;

  const TextFormFieldWithHeader({
    Key? key,
    required this.title,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.validator,
    this.onChanged,
    this.maxLines = 1,
    this.verticalPadding = 0.0,
    this.horizontalPadding = AppDimension.normalPadding,
    this.textInputFormatter,
    this.onTapOutside,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: textTheme.bodySmall,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          enabled: enabled,
          onTapOutside: onTapOutside,
          controller: textEditingController,
          decoration: AppDecoration.textFieldDecoration(hintText: hintText).copyWith(
            contentPadding: EdgeInsets.symmetric(
              horizontal: horizontalPadding!,
              vertical: verticalPadding!,
            ),
            filled: true,
          ),
          keyboardType: textInputType,
          validator: validator,
          textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.next,
          onChanged: onChanged,
          maxLines: maxLines,
          style: textTheme.bodySmall!.copyWith(),
          inputFormatters: textInputFormatter != null ? [textInputFormatter!] : [],
        ),
      ],
    );
  }
}
