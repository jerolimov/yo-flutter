import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

import 'package:cloud_firestore/cloud_firestore.dart';

import 'person.dart';
import 'session_model.dart';

class FriendsModel extends Model {
  /// Easy access to this model using [ScopedModel.of]
  static FriendsModel of(BuildContext context) =>
      ScopedModel.of<FriendsModel>(context);

  FriendsModel(this.userModel) {
    this.userModel.addListener(() {
      _loadFriends();
    });
  }

  List<Person> get friends => _friends?.toList() ?? [];
  Iterable<Person> _friends;

  bool get isLoading => _friends == null;

  SessionModel userModel;

  Future<void> sendYo(Person person) async {
    await http.get('https://us-central1-yo-flutter-80f0f.cloudfunctions.net/sendYo?'
        'fromUid=${userModel.uid}&toUid=${person.uid}');

  }

  Future<void> _loadFriends() async {
    print("Load Friends");
    final stream = Firestore.instance.collection(Person.REF).orderBy("name").snapshots();
    stream.listen((QuerySnapshot snapshot) {
      _friends = snapshot.documents.map((data) => Person.fromJson(data.data));
      print("Found friends: " + _friends.length.toString());
      this.notifyListeners();
    });
  }
}
