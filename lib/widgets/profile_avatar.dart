import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final bool isActive;
  final bool hasBorder;
  final IconData icon;

  const ProfileAvatar(
      {Key? key,
      this.isActive = false,
      this.hasBorder = false,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.blue[300],
          child: CircleAvatar(
              radius: hasBorder ? 17.0 : 20.0,
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person)
              // backgroundImage: Icon(imageUrl)
              ),
        ),
        isActive
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
