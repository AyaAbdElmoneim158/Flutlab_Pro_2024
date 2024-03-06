import 'package:flutlab_projects_2024/common/widgets/custom_shapes/curved_edges/curved_widgets.dart';
import 'package:flutter/material.dart';

class TCurvedEdgeWidgets extends StatelessWidget {
  const TCurvedEdgeWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedWidget(),
      child: child,
    );
  }
}
