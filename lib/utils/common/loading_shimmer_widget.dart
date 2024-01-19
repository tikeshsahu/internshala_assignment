import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[200]!,
          highlightColor: Colors.grey[100]!,
          child: ListTile(
            title: Container(
              width: 150.0,
              height: 50.0,
              color: Colors.white,
            ),
            subtitle: Container(
              width: 200.0,
              height: 60.0,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
