import 'package:flutter/material.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';

class CustomNavBarWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final int index;

  const CustomNavBarWidget({super.key, required this.title, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    const int currentIndex = 1;

    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
              color: index == currentIndex ? Colors.white : Colors.transparent,
              width: 3,
            ))),
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          padding: const EdgeInsets.symmetric(vertical: AppDimension.normalPadding),
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              Icon(
                icon,
                color: index != currentIndex ? Colors.grey : Colors.blue,
              ),
              const SizedBox(height: 2),
              Text(
                title.toUpperCase(),
                style: textTheme.titleSmall?.copyWith(fontSize: 10, fontWeight: index != currentIndex ? FontWeight.normal : FontWeight.bold, color: index != currentIndex ? Colors.grey : Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
