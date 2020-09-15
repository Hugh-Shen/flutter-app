import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const SRCOLL_HEIGHT = 100;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double opacity = 0;
  List swiperData = [
    'https://hbimg.huabanimg.com/5dabb3ede541cd5404363532f1bdbb49fe62e18238242-S7rQPP_fw658/format/webp',
    'https://hbimg.huabanimg.com/bd8c8f468f9eff19750c4b52d76ff315e33dac0a23e96-EXZLOF_fw658/format/webp',
    'https://hbimg.huabanimg.com/bdfabdabf16289456c0aa80f22a83d50763eae90440a0-wLYu14_fw658/format/webp'
  ];
  _onScroll(offset) {
    double height = offset / SRCOLL_HEIGHT;
    if (height < 0) {
      height = 0;
    }
    if (height > 1) {
      height = 1;
    }
    setState(() {
      opacity = height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: NotificationListener(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification &&
                        scrollNotification.depth == 0) {
                      _onScroll(scrollNotification.metrics.pixels);
                    }
                  },
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 160,
                        child: Swiper(
                          itemCount: swiperData.length,
                          autoplay: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(
                              swiperData[index],
                              fit: BoxFit.fill,
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 800,
                      ),
                    ],
                  ))),
          Opacity(
            opacity: opacity,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('首页'),
              )),
            ),
          )
        ],
      ),
    );
  }
}
