import 'package:flutter/material.dart';

class IconActionsBar extends StatelessWidget {
  const IconActionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.photo),
          color: Colors.green,
          onPressed: () {},
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(Icons.videocam),
          color: Colors.purple,
          onPressed: () {},
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(Icons.tag_faces),
          color: Colors.orange,
          onPressed: () {},
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(Icons.location_on),
          color: Colors.red,
          onPressed: () {},
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(Icons.people),
          color: Colors.blue,
          onPressed: () {},
        ),
      ],
    );
  }
}
