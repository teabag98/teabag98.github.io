import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0 / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Icon(Icons.account_circle_rounded),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0 / 2),
            child: Text("Angelina Jolie"),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
