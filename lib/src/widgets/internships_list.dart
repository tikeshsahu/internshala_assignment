import 'package:flutter/material.dart';
import 'package:internshala_assignment/src/api_services/api_repositiory.dart';
import 'package:internshala_assignment/src/models/internship_model.dart';
import 'package:internshala_assignment/src/screens/internships_filter_screen.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';
import 'package:internshala_assignment/theme/app_theme.dart';
import 'package:internshala_assignment/utils/common/loading_shimmer_widget.dart';

class InternshipList extends StatelessWidget {
  const InternshipList({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.1,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.25,
                child: OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppDimension.largeRadius),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InternshipFiltersScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.filter_alt_outlined, size: AppDimension.iconSize),
                      const SizedBox(width: AppDimension.normalPadding / 2),
                      Text("Filters", style: textTheme.labelSmall),
                    ],
                  ),
                ),
              ),
              Text("Total internships", style: textTheme.labelSmall)
            ],
          ),
        ),
        FutureBuilder(
          future: ApiRepository.instance.getInternships(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const ShimmerLoadingWidget();
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            } else {
              final List<Internship> internships = snapshot.data;
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: internships.length,
                itemBuilder: (context, index) {
                  final Internship internship = internships[index];
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppDimension.normalPadding * 1.5, vertical: AppDimension.normalPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              internship.title,
                              style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                            ),
                            const SizedBox(height: AppDimension.normalPadding / 2),
                            Text(
                              internship.companyName,
                              style: textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: AppDimension.normalPadding),
                            Row(
                              children: [
                                Icon(
                                  internship.workFromHome ? Icons.home_outlined : Icons.location_on_outlined,
                                  size: AppDimension.iconSize,
                                  color: AppTheme.themeIconColor,
                                ),
                                const SizedBox(width: AppDimension.normalPadding / 2),
                                Text(
                                  internship.workFromHome ? "Work from home" : internship.locationNames.join(", "),
                                  style: textTheme.titleSmall,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                )
                              ],
                            ),
                            const SizedBox(height: AppDimension.normalPadding),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.play_circle_outlined,
                                      size: AppDimension.iconSize,
                                      color: AppTheme.themeIconColor,
                                    ),
                                    const SizedBox(width: AppDimension.normalPadding / 2),
                                    Text(internship.startDate, style: textTheme.titleSmall),
                                  ],
                                ),
                                const SizedBox(width: AppDimension.normalPadding * 2),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      size: AppDimension.iconSize,
                                      color: AppTheme.themeIconColor,
                                    ),
                                    const SizedBox(width: AppDimension.normalPadding / 2),
                                    Text(internship.duration, style: textTheme.titleSmall),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: AppDimension.normalPadding),
                            Row(
                              children: [
                                const Icon(
                                  Icons.money_outlined,
                                  size: AppDimension.iconSize,
                                  color: AppTheme.themeIconColor,
                                ),
                                const SizedBox(width: AppDimension.normalPadding / 2),
                                Text(internship.stipend["salary"], style: textTheme.titleSmall),
                              ],
                            ),
                            const SizedBox(height: AppDimension.normalPadding),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: AppTheme.themeBackgroundColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  internship.employmentType,
                                  style: textTheme.labelSmall,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppDimension.normalPadding),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: AppTheme.themeBackgroundColor,
                              ),
                              width: size.width * 0.4,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star_border_purple500,
                                      size: AppDimension.iconSize - 4,
                                      color: Colors.orange,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Be an early applicant",
                                      style: textTheme.labelSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: AppDimension.normalPadding / 2),
                            Divider(
                              color: Colors.grey[300],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text("View Details"),
                              ),
                              const SizedBox(width: AppDimension.normalPadding * 1.5),
                              ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppDimension.normalPadding * 1.5,
                                  ),
                                  child: Text("Apply now", style: textTheme.labelMedium!.copyWith(color: Colors.white)),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppDimension.normalPadding / 4);
                },
              );
            }
          },
        ),
      ],
    );
  }
}
