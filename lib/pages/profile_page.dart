// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/custom_profile_app_bar.dart';
import '../widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(headerSliverBuilder: (context, index) {
        return [
          CustomProfileAppBar(),
          SliverToBoxAdapter(child: ProfileHeader(),)
        ];
      },
      body: Text("hello"),
      ),
    );
  }
}
