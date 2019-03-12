import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'session_model.dart';
import 'friends_model.dart';
import 'person.dart';

Future<void> main() async {
  var sessionModel = SessionModel();
  runApp(ScopedModel<SessionModel>(
    model: sessionModel,
    child: ScopedModel<FriendsModel>(
      model: FriendsModel(sessionModel),
      child: YoApp(),
    ),
  ));
}

class YoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yo!',
        theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Color(0xFFF67280),
        ),
        home: Scaffold(
          body: ScopedModelDescendant<SessionModel>(
              builder: (BuildContext context, Widget child, SessionModel sessionModel) {
                if (!sessionModel.initialized) {
                  return LoadingPage();
                } else if (!sessionModel.isUserLoggedIn) {
                  return LoginPage();
                } else {
                  return FriendListPage();
                }
          }),
        ));
  }
}

List<Color> _colors = [
  Color(0xFFF8B195),
  Color(0xFFF67280),
  Color(0xFFC06C84),
  Color(0xFF6C5B7B),
  Color(0xFF355C7D),
  Color(0xFF34495D),
];

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Loading...")),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Text("YO!", style: TextStyle(fontSize: 72)))),
            RaisedButton(
              child: Text("Google Login"),
              onPressed: () {
                print("Login...");
                ScopedModel.of<SessionModel>(context).googleLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}

class FriendListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<FriendsModel>(
      builder: (BuildContext context, Widget child, FriendsModel friendsModel) {
        return ListView.builder(
          itemCount: friendsModel.friends.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: _colors[index % _colors.length],
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: ClipRRect(
                  child: Image.network(
                    friendsModel.friends[index].photoUrl,
                    width: 50,
                    height: 50,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                title: Text(friendsModel.friends[index].name),
                onTap: () {
                  friendsModel.sendYo(friendsModel.friends[index]);
                },
              ),
            );
          },
        );
      }
    );
  }
}
