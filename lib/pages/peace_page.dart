import 'package:flutter/material.dart';
import 'package:green_app/widgets/custom_home_app_bar.dart';

class PeacePage extends StatelessWidget {
  const PeacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
      ],
    );
  }
}
