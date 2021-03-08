import 'package:flutter/material.dart';
import 'package:flutter_app/screens/profile/profile_screen.dart';
import 'package:flutter_app/screens/profile_edit/profile_edit_screen.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key key}) : super(key: key);

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  
  GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();

  Future<bool> _willPopCallback() async {
      if(_homeNavigatorKey.currentState.canPop()){
            await _homeNavigatorKey.currentState.maybePop();
            return Future(() => false);
      }
      return Future(() => true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPopCallback,
          child: Navigator(
        key: _homeNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              settings: settings,
              builder: (context) {
                switch (settings.name) {
                  case '/':
                    return ProfileScreen();
                  case '/profile/edit':
                    return ProfileEditScreen();
                }
              });
        },
      ),
    );
  }
}
