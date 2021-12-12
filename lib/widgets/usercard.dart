import 'package:flutter/material.dart';
import 'package:smsweb/models/models.dart';
import 'package:smsweb/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  final personModels user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            icon: Icons.person,
          ),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              user.personname,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
