
import 'package:flutter/material.dart';

class PreferredModel extends StatelessWidget {
  const PreferredModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CircleAvatar(
          radius: 33,
          backgroundColor: Theme.of(context).primaryColor,
          child: Text('All',
            style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.white,
                ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          height: 75,
          width: 75,
          child: Card(
            elevation: 5,
            shape: CircleBorder(),
            child: Center(
              child: Image.asset(
                'assets/images/vw.JPG',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ),
          const SizedBox(width: 20),
        SizedBox(
          height: 75,
          width: 75,
          child: Card(
            elevation: 5,
            shape: CircleBorder(),
            child: Center(
              child: Image.asset(
                'assets/images/tesla.JPG',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ),
          const SizedBox(width: 15),
        SizedBox(
          height: 75,
          width: 75,
          child: Card(
            elevation: 5,
            shape: CircleBorder(),
            child: Center(
              child: Image.asset(
                'assets/images/toyata.JPG',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ),
          const SizedBox(width: 15),
        SizedBox(
          height: 75,
          width: 75,
          child: Card(
            elevation: 5,
            shape: CircleBorder(),
            child: Center(
              child: Image.asset(
                'assets/images/vw.JPG',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
