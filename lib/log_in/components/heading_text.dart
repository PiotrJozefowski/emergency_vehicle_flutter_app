import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30 /2 ),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Text('Welcome'),
        SizedBox(
          height: 20,
        ),
        Text('Log In')
      ],
    ),
        );
  }
}
