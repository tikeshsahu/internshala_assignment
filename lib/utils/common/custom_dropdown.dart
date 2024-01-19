import 'package:flutter/material.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';
import 'package:internshala_assignment/theme/app_theme.dart';

// ignore: must_be_immutable
class CustomDropdown extends StatelessWidget {
  final String selectedValue;
  final List items;
  final Function updateValue;
  final String fieldToBeUsedAsLabel;
  final String fieldToBeUsedAsValue;
  bool isEnabled;

  CustomDropdown({
    Key? key,
    required this.selectedValue,
    this.items = const [],
    required this.updateValue,
    this.fieldToBeUsedAsLabel = "label",
    this.fieldToBeUsedAsValue = "value",
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - (2 * AppDimension.normalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimension.normalRadius),
        border: Border.all(
          color: AppTheme.themeBorderColor,
        ),
      ),
      child: DropdownButton(
        isExpanded: true,
        onChanged: (value) => updateValue(value),
        //onChanged: isEnabled ? (value) => updateValue(value) : null,
        underline: const Offstage(
          offstage: true,
        ),
        icon: const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
        ),
        isDense: false,
        value: selectedValue,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
        items: items
            .map<DropdownMenuItem>(
              (e) => DropdownMenuItem(
                value: e[fieldToBeUsedAsValue],
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimension.normalPadding,
                    right: AppDimension.normalPadding,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: e[fieldToBeUsedAsLabel],
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
