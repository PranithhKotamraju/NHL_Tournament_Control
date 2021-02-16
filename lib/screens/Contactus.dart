import 'package:flutter/material.dart';

import 'package:nhl_trournament_control/navigationblock/navigaation_block.dart';

class Conactus extends StatelessWidget with NavigationStates {
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
                  "Contact Us",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 100, left: 20, right: 20),
              child: Text(
                "Now you have more options to get our attention. Please contact us through live chat or by email at nhltvsupport@nhl.com or by phone at 800-559-2333 (US) / 1-585-736-3994 (International)12PM to 1AM ET Monday through Sunday. Customer Service remains open until the conclusion of all games.",
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
