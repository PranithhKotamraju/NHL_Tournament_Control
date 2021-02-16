import 'package:flutter/material.dart';

import 'package:nhl_trournament_control/navigationblock/navigaation_block.dart';

class Round4 extends StatelessWidget with NavigationStates {
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
                  "Stanley Cup Finals",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 150, bottom: 30, left: 20, right: 20),
                child: Text(
                  "STL Wins(4-3)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/t5.webp"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 15.0),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Blues",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 185,
                    ),
                    Text("4",
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
                              image: AssetImage("assets/images/tt4.png"),
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
                    Text("1",
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
