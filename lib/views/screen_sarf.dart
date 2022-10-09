// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controllers/search_controller.dart';

class Search2Screen extends StatelessWidget {
   Search2Screen({super.key});

  final SearchController searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.transparent,
        floating: true,
        centerTitle: false,
        elevation: 0,
        title: Container(
          height: 38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: TextField(
            cursorColor: Colors.grey.shade500,
            decoration: InputDecoration(
                hintText: "Find Comrades 🔥",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.5,
                    fontWeight: FontWeight.w500),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey.shade500,
                )
                ),
                
            style: TextStyle(color: Colors.black, fontSize: 16.5),
          ),
           
        )
        
        );
        
  }
}
