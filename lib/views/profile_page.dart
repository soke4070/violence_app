// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/custom_profile_app_bar.dart';
import '../widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              CustomProfileAppBar(),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  child: ProfileHeader(),
                ),
              )
              
            ];
          },
          body: TabBarView(children: [
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://c.tenor.com/rCY3koHdiTwAAAAM/ok-hand-pepe.gif'),
                        ),
                      ),
                    );
                  }, childCount: 15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                )
              ],
            ),
          ])),
    );
  }
}
