// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_app/_mock_data/mock.dart';
import 'package:green_app/widgets/violence_details.dart';
import 'package:green_app/widgets/violence_side_action_bar.dart';

class ViolencePage extends StatelessWidget {
  const ViolencePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text("Vawulence🔥",
            style: GoogleFonts.satisfy(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.send_outlined)),
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: violence.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          violence[index].imageUrl))),
              child: Center(
                  child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent
                      ],
                      end: Alignment(0, -0.75),
                      begin: Alignment(0, 0.1),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                    
                        children: [
                          Flexible(
                            flex: 11,
                            child: ViolenceDetails(violence: violence[index],),
                          ),
                          Flexible(
                            flex: 2,
                            child: ViolenceSideActionBar(violence: violence[index],),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
            );
          }),
    );
  }
}
