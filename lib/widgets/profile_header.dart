// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:green_app/widgets/profile_label_count_widget.dart';

import 'add_story_card_profile.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AddStoryCardProfile(),
            ProfileLabelCountWidget(
              count: "140",
              labelText: "Chaos🔥",
            ),
              ProfileLabelCountWidget(
              count: "700",
              labelText: "Followers",
            ),
              ProfileLabelCountWidget(
              count: "1600",
              labelText: "Following",
            ),
          ],
        )
      ],
    );
  }
}
