// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:violence_app/widgets/profile_label_count_widget.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AddStoryCardProfile(),
              SizedBox(width: 8),
              ProfileLabelCountWidget(
                count: "140",
                labelText: "Violence",
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "comradesoke",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "The Violent ones Are Not Yet Born ❤️‍🔥",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Log Out ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(3),
                child: Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        ExpansionTile(
          title: Text(
            "Vawulence Highlight",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          children: [
            Text(
              "Peace is for the Weak",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
