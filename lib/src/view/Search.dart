import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Center(
                child: Text('hehe'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Text('hugh'),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.lightBlue),
            )
          ],
        ),
      ),
    );
  }
}
