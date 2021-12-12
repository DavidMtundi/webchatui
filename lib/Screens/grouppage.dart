import 'package:flutter/material.dart';

import 'package:smsweb/models/models.dart';
import 'package:smsweb/widgets/groupcard.dart';

class grouppage extends StatelessWidget {
  final List<groupmodels> groups;

  const grouppage({
    Key? key,
    required this.groups,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Groups',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8.0),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: groups.length,
              itemBuilder: (BuildContext context, int index) {
                final groupmodels grp = groups[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: groupcard(group: grp),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
