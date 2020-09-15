import 'package:flutter/material.dart';
import 'package:app/src/view/Home.dart';
import 'package:app/src/view/Mine.dart';
import 'package:app/src/view/Search.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int current = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[Home(), Search(), Mine()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.blueAccent,
              ),
              title: Text(
                '首页',
                style: TextStyle(
                    color: current == 0 ? Colors.blueAccent : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.blueAccent,
              ),
              title: Text(
                '搜索',
                style: TextStyle(
                    color: current == 1 ? Colors.blueAccent : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
              ),
              title: Text(
                '首页',
                style: TextStyle(
                    color: current == 2 ? Colors.blueAccent : Colors.grey),
              ))
        ],
        onTap: (index) => {
          _controller.jumpToPage(index),
          setState(() {
            current = index;
          })
        },
      ),
    );
  }
}
