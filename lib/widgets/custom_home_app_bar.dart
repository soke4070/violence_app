import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: false,
      title: const Text("GreenApp"),
      actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.add_box_outlined)),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.add_box_outlined)),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.add_box_outlined))
      ],
    );
  }
}
