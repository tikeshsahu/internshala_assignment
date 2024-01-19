import 'package:flutter/material.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';
import 'package:internshala_assignment/theme/app_theme.dart';
import 'package:internshala_assignment/utils/app_constants.dart';
import 'package:internshala_assignment/utils/common/custom_dropdown.dart';
import 'package:internshala_assignment/utils/common/textfield_with_header_widget.dart';

class InternshipFiltersScreen extends StatelessWidget {
  InternshipFiltersScreen({super.key});

  final TextEditingController startingFromTextController = TextEditingController();
  final TextEditingController maxDurationTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Filters'),
        actions: const [
          Icon(Icons.bookmark_border),
          SizedBox(width: AppDimension.normalPadding),
          Icon(Icons.message_outlined),
          SizedBox(width: AppDimension.normalPadding),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppDimension.normalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PROFILE', style: textTheme.bodySmall),
                const SizedBox(height: AppDimension.normalPadding),
                Row(
                  children: [
                    const Icon(Icons.add, color: AppTheme.themeColor, size: AppDimension.iconSize),
                    const SizedBox(width: AppDimension.normalPadding),
                    Text('Add profile', style: textTheme.titleSmall!.copyWith(color: AppTheme.themeColor)),
                  ],
                ),
                const SizedBox(height: AppDimension.normalPadding),
                Text('CITY', style: textTheme.bodySmall),
                const SizedBox(height: AppDimension.normalPadding),
                Row(
                  children: [
                    const Icon(Icons.add, color: AppTheme.themeColor, size: AppDimension.iconSize),
                    const SizedBox(width: AppDimension.normalPadding),
                    Text('Add city', style: textTheme.titleSmall!.copyWith(color: AppTheme.themeColor)),
                  ],
                ),
                const SizedBox(height: AppDimension.normalPadding),
                Text('INTERNSHIP TYPE', style: textTheme.bodySmall),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Work from home', style: textTheme.titleSmall),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Part-time', style: textTheme.titleSmall),
                  ],
                ),
                const SizedBox(height: AppDimension.largePadding),
                TextFormFieldWithHeader(
                    title: "STARTING FROM (OR AFTER)",
                    textEditingController: startingFromTextController,
                    hintText: "",
                    textInputType: TextInputType.text,
                    validator: (value) {
                      return null;
                    }),
                const SizedBox(height: AppDimension.largePadding),
                Text('MAXIMUM DURATION (IN MONTHS)', style: textTheme.bodySmall),
                const SizedBox(height: AppDimension.normalPadding),
                CustomDropdown(selectedValue: "", items: AppConstants.internshipDurationList, updateValue: () {}),
                const SizedBox(height: AppDimension.largePadding),
                Text('MORE FILTERS', style: textTheme.bodySmall),
                const SizedBox(height: AppDimension.normalPadding),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Internships with job offer', style: textTheme.titleSmall),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Fast response', style: textTheme.titleSmall),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Early applicant', style: textTheme.titleSmall),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const SizedBox(width: AppDimension.normalPadding / 2),
                    Text('Internships for women', style: textTheme.titleSmall),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppDimension.normalPadding),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Clear all'),
              ),
            ),
            const SizedBox(width: AppDimension.normalPadding),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Apply', style: textTheme.labelMedium!.copyWith(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
