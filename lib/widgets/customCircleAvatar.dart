import 'package:flutter/material.dart';

class customCircleAvatar extends StatelessWidget {
  final String name;
  final double iconfont;
  final isgroup;
  final isprofile;

  const customCircleAvatar(
      {Key? key,
      required this.name,
      required this.iconfont,
      this.isgroup = false,
      this.isprofile = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(
        children: [
          isgroup
              ? CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.people_outline_outlined,
                      size: iconfont, color: Colors.black12),
                )
              : CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,
                      size: iconfont, color: Colors.black12)),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
