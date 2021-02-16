import 'package:bloc/bloc.dart';
import 'package:nhl_trournament_control/screens/home.dart';
import 'package:nhl_trournament_control/screens/round1.dart';
import 'package:nhl_trournament_control/screens/round2.dart';
import 'package:nhl_trournament_control/screens/round3.dart';
import 'package:nhl_trournament_control/screens/round4.dart';
import 'package:nhl_trournament_control/screens/Contactus.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  Round1ClickedEvent,
  Round2ClickedEvent,
  Round3ClickedEvent,
  Round4ClickedEvent,
  ContactUsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Homescreen();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Homescreen();
        break;
      case NavigationEvents.Round1ClickedEvent:
        yield Round1();
        break;
      case NavigationEvents.Round2ClickedEvent:
        yield Round2();
        break;
      case NavigationEvents.Round3ClickedEvent:
        yield Round3();
        break;
      case NavigationEvents.Round4ClickedEvent:
        yield Round4();
        break;
      case NavigationEvents.ContactUsClickedEvent:
        yield Conactus();
        break;
    }
  }
}
