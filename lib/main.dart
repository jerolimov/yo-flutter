import 'package:flutter/material.dart';

import 'person.dart';

Future<void> main() async {
  runApp(YoApp());
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
          body: FriendList(),
        ));
  }
}

final List<Person> friends = [
  Person("ffff", "Frederik Schweiger",
      "https://pbs.twimg.com/profile_images/1074391975820972033/SP7txc1D_400x400.jpg"),
  Person("pppp", "Pascal Welsch",
      "https://pbs.twimg.com/profile_images/941273826557677568/wCBwklPP_400x400.jpg"),
  Person("gggg", "Georg Bednorz",
      "https://pbs.twimg.com/profile_images/1091439933716381701/PIfcpdHq_400x400.png"),
  Person("ssss", "Seth Ladd",
      "https://pbs.twimg.com/profile_images/986316447293952000/oZWVUWDs_400x400.jpg"),
  Person("kkkk", "Kate Lovett",
      "https://pbs.twimg.com/profile_images/1048927764156432384/JxEqQ9dX_400x400.jpg"),
  Person("tttt", "Tim Sneath",
      "https://pbs.twimg.com/profile_images/653618067084218368/XlQA-oRl_400x400.jpg"),
  Person("hhhh", "Filip Hráček",
      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
  Person("aaaa", "Andrew Brogdon",
      "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png"),
  Person("nnnn", "Nitya Narasimhan",
      "https://pbs.twimg.com/profile_images/988808912504733697/z03gHVFL_400x400.jpg"),
  Person("ffff2", "Frederik Schweiger",
      "https://pbs.twimg.com/profile_images/1074391975820972033/SP7txc1D_400x400.jpg"),
  Person("pppp2", "Pascal Welsch",
      "https://pbs.twimg.com/profile_images/941273826557677568/wCBwklPP_400x400.jpg"),
  Person("gggg2", "Georg Bednorz",
      "https://pbs.twimg.com/profile_images/1091439933716381701/PIfcpdHq_400x400.png"),
  Person("ssss2", "Seth Ladd",
      "https://pbs.twimg.com/profile_images/986316447293952000/oZWVUWDs_400x400.jpg"),
  Person("kkkk2", "Kate Lovett",
      "https://pbs.twimg.com/profile_images/1048927764156432384/JxEqQ9dX_400x400.jpg"),
  Person("tttt3", "Tim Sneath",
      "https://pbs.twimg.com/profile_images/653618067084218368/XlQA-oRl_400x400.jpg"),
  Person("hhhh3", "Filip Hráček",
      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
  Person("aaaa2", "Andrew Brogdon",
      "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png"),
  Person("nnnn3", "Nitya Narasimhan",
      "https://pbs.twimg.com/profile_images/988808912504733697/z03gHVFL_400x400.jpg"),
  Person("ffff4", "Frederik Schweiger",
      "https://pbs.twimg.com/profile_images/1074391975820972033/SP7txc1D_400x400.jpg"),
  Person("pppp4", "Pascal Welsch",
      "https://pbs.twimg.com/profile_images/941273826557677568/wCBwklPP_400x400.jpg"),
  Person("gggg4", "Georg Bednorz",
      "https://pbs.twimg.com/profile_images/1091439933716381701/PIfcpdHq_400x400.png"),
  Person("ssss4", "Seth Ladd",
      "https://pbs.twimg.com/profile_images/986316447293952000/oZWVUWDs_400x400.jpg"),
  Person("kkkk4", "Kate Lovett",
      "https://pbs.twimg.com/profile_images/1048927764156432384/JxEqQ9dX_400x400.jpg"),
  Person("tttt4", "Tim Sneath",
      "https://pbs.twimg.com/profile_images/653618067084218368/XlQA-oRl_400x400.jpg"),
  Person("hhhh4", "Filip Hráček",
      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
  Person("aaaa4", "Andrew Brogdon",
      "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png"),
  Person("nnnn4", "Nitya Narasimhan",
      "https://pbs.twimg.com/profile_images/988808912504733697/z03gHVFL_400x400.jpg"),
  Person("ffff4", "Frederik Schweiger",
      "https://pbs.twimg.com/profile_images/1074391975820972033/SP7txc1D_400x400.jpg"),
  Person("pppp4", "Pascal Welsch",
      "https://pbs.twimg.com/profile_images/941273826557677568/wCBwklPP_400x400.jpg"),
  Person("gggg4", "Georg Bednorz",
      "https://pbs.twimg.com/profile_images/1091439933716381701/PIfcpdHq_400x400.png"),
  Person("ssss4", "Seth Ladd",
      "https://pbs.twimg.com/profile_images/986316447293952000/oZWVUWDs_400x400.jpg"),
  Person("kkkk4", "Kate Lovett",
      "https://pbs.twimg.com/profile_images/1048927764156432384/JxEqQ9dX_400x400.jpg"),
  Person("tttt", "Tim Sneath",
      "https://pbs.twimg.com/profile_images/653618067084218368/XlQA-oRl_400x400.jpg"),
  Person("hhhh", "Filip Hráček",
      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
  Person("aaaa", "Andrew Brogdon",
      "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png"),
  Person("nnnn", "Nitya Narasimhan",
      "https://pbs.twimg.com/profile_images/988808912504733697/z03gHVFL_400x400.jpg"),
  Person("ffff", "Frederik Schweiger",
      "https://pbs.twimg.com/profile_images/1074391975820972033/SP7txc1D_400x400.jpg"),
  Person("pppp", "Pascal Welsch",
      "https://pbs.twimg.com/profile_images/941273826557677568/wCBwklPP_400x400.jpg"),
  Person("gggg", "Georg Bednorz",
      "https://pbs.twimg.com/profile_images/1091439933716381701/PIfcpdHq_400x400.png"),
  Person("ssss", "Seth Ladd",
      "https://pbs.twimg.com/profile_images/986316447293952000/oZWVUWDs_400x400.jpg"),
  Person("kkkk", "Kate Lovett",
      "https://pbs.twimg.com/profile_images/1048927764156432384/JxEqQ9dX_400x400.jpg"),
  Person("tttt", "Tim Sneath",
      "https://pbs.twimg.com/profile_images/653618067084218368/XlQA-oRl_400x400.jpg"),
  Person("hhhh", "Filip Hráček",
      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
  Person("aaaa3", "Andrew Brogdon",
      "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png"),
  Person("nnnn3", "Nitya Narasimhan",
      "https://pbs.twimg.com/profile_images/988808912504733697/z03gHVFL_400x400.jpg"),
];

List<Color> _colors = [
  Color(0xFFF8B195),
  Color(0xFFF67280),
  Color(0xFFC06C84),
  Color(0xFF6C5B7B),
  Color(0xFF355C7D),
  Color(0xFF34495D),
];

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: _colors[index % _colors.length],
          child: ListTile(
            leading: ClipRRect(
              child: Image.network(
                friends[index].photoUrl,
                width: 50,
                height: 50,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            title: Text(friends[index].name.toUpperCase()),
          ),
        );
      },
    );
  }
}
