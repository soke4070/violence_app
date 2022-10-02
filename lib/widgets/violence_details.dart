// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'package:marquee/marquee.dart';

import '../models/violence.dart';

class ViolenceDetails extends StatelessWidget {
  const ViolenceDetails({super.key, required this.violence});
  final Violence violence;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text("${violence.postedBy} • Follow",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15)),
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(violence.imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: ExpandableText(
              violence.caption,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          ),
          ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 12,
              title: violence.isTagged
                  ? Row(
                      children: [
                        Container(
                          height: 20,
                          width: 125,
                          child: Marquee(
                            text: "${violence.audioTitle} • ",
                            scrollAxis: Axis.horizontal,
                            velocity: 20,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Expanded(
                          child: Text("${violence.taggedUser}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    )
                  : Text(violence.audioTitle,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.volume_up, size: 16, color: Colors.white)),
        ],
      ),
    );
  }
}
