import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/curved_edges/curve_edges_widgets.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidgets(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        width: double.infinity,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircleContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -100,
                child: TCircleContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
