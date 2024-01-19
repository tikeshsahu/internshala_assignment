import 'package:flutter/material.dart';
import 'package:internshala_assignment/src/widgets/internships_list.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';
import 'package:internshala_assignment/theme/app_theme.dart';
import 'package:internshala_assignment/utils/common/custom_nav_bar.dart';
import 'package:internshala_assignment/utils/common/custom_search_delegate.dart';

class InternshipsScreen extends StatelessWidget {
  const InternshipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.themeBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text(
          'Internships',
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: AppDimension.normalPadding / 2),
          const Icon(Icons.bookmark_border),
          const SizedBox(width: AppDimension.normalPadding),
          const Icon(Icons.message_outlined),
          const SizedBox(width: AppDimension.normalPadding),
        ],
      ),
      body: const SafeArea(top: true, bottom: true, child: SingleChildScrollView(child: InternshipList())),
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Expanded(
              flex: 1,
              child: CustomNavBarWidget(
                title: "home",
                icon: Icons.home_outlined,
                index: 0,
              ),
            ),
            Expanded(flex: 1, child: CustomNavBarWidget(title: "Internships", icon: Icons.assignment_rounded, index: 1)),
            Expanded(flex: 1, child: CustomNavBarWidget(title: "Jobs", icon: Icons.work_outline_rounded, index: 2)),
            Expanded(flex: 1, child: CustomNavBarWidget(title: "Clubs", icon: Icons.group_outlined, index: 3)),
            Expanded(flex: 1, child: CustomNavBarWidget(title: "Courses", icon: Icons.local_play_outlined, index: 4)),
          ],
        ),
      ),
    );
  }
}
