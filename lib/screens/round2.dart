import 'package:flutter/material.dart';

import 'package:nhl_trournament_control/navigationblock/navigaation_block.dart';

class Round2 extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 150, bottom: 30, left: 20, right: 20),
                child: Text(
                  "Round 2",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 150, bottom: 30, left: 20, right: 20),
                child: Text(
                  "Game 1- (BOS Leads 1-0)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/t1.gif"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 15.0),
                    ),
                    Text("Blue Jackets",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 100,
                    ),
                    Text("2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/t3.png"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 15.0),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Bruins",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 165,
                    ),
                    Text("3",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
