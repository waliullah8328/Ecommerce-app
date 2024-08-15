import 'package:flutter/material.dart';
import 'package:t_store/common/widges/custom_shapes/curve_edges/curve_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedWidget(),
      child: child,
    );
  }
}