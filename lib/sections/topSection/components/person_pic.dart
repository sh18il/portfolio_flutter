import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1500,
      height: 1800,
      constraints: BoxConstraints(maxWidth: 739, maxHeight: 700),
      child: Image.asset("assets/images/person.png"),
    );
  }
}
