import 'package:flutter/material.dart';
import 'package:smsweb/Screens/screens.dart';
import 'package:smsweb/models/models.dart';
import 'package:smsweb/widgets/widgets.dart';

class mainscreen extends StatefulWidget {
  mainscreen({Key? key}) : super(key: key);
  late groupmodels group;
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  bool openaddgrouppage = false;
  List<groupmodels> groups = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //add custom appbar
      //add custom columns
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  "Sms for Web",
                  style: TextStyle(
                      fontSize: 40, letterSpacing: -1.24, color: Colors.black),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: size.height * 0.1,
                  width: size.width - 50,
                  color: Colors.orange,
                  child: Row(
                    children: [
                      customCircleAvatar(
                        isprofile: true,
                        iconfont: 20,
                        name: "GovernorMeru",
                      ),
                    ],
                  ),
                ),
                grouppage(
                  groups: groups,
                ),
                !openaddgrouppage ? chatpage() : addgrouppage(),
                !openaddgrouppage ? groupcontactspage() : addgrouppersonpage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
