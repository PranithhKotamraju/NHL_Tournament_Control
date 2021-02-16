import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nhl_trournament_control/navigationblock/navigaation_block.dart';
import 'package:nhl_trournament_control/sidebar/customclipper.dart';
import 'package:nhl_trournament_control/sidebar/menu_item.dart';
import 'package:rxdart/rxdart.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;

  StreamController<bool> isSideBarOpenedStreamController;

  Stream<bool> isSideBarOpenedStream;

  StreamSink<bool> isSideBarOpenedSink;

  // final  bool isSideBarOpened = true;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);

    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    super.dispose();
  }

  void onIconPressed() {
    final animaationStatus = _animationController.status;
    final isAnimationCompleted = animaationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSideBarOpenedSink.add(true);

      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -screenwidth,
          right: isSideBarOpenedAsync.data ? 0 : screenwidth - 45,
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        ListTile(
                          title: Text(
                            "National Hockey League (NHL)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "The 2019 Stanley Cup playoffs ",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          leading: Container(
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/NHL.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.format_shapes,
                          title: "About",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.HomePageClickedEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.notes,
                          title: "Round1",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.Round1ClickedEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.notes,
                          title: "Round2",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.Round2ClickedEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.notes,
                          title: "Conference Finals",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.Round3ClickedEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.notes,
                          title: "Stanley Cup Finals",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.Round4ClickedEvent);
                          },
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.6,
                          color: Colors.white,
                          indent: 32,
                          endIndent: 16,
                        ),
                        MenuItem(
                          icon: Icons.notes,
                          title: "Contact Us",
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.ContactUsClickedEvent);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: Colors.black,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.white54,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
