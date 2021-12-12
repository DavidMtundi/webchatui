import 'package:flutter/material.dart';

import 'package:smsweb/models/models.dart';
import 'package:smsweb/widgets/widgets.dart';

class groupcard extends StatelessWidget {
  final groupmodels group;
  const groupcard({
    Key? key,
    required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(icon: Icons.group),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              group.groupname,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
