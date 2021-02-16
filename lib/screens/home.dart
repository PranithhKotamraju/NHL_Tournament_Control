import 'package:flutter/material.dart';

import 'package:nhl_trournament_control/navigationblock/navigaation_block.dart';

class Homescreen extends StatelessWidget with NavigationStates {
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
                  " The 2019 Stanley Cup playoffs ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 100, left: 20, right: 20),
              child: Text(
                "The 2019 Stanley Cup playoffs was the playoff tournament of the National Hockey League (NHL). The playoffs began on April 10, 2019, after the 2018–19 NHL season, and concluded on June 12, 2019, with the St. Louis Blues winning their first Stanley Cup in franchise history defeating the Boston Bruins four games to three in the Stanley Cup Finals.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/NHL.png"),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
