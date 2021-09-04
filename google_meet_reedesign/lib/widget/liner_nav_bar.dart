import 'package:flutter/material.dart';
import 'package:root/const/const.dart';
import 'package:root/widget/buttom_nav_bar.dart';

class LinearNavBar extends StatefulWidget {
  @override
  _LinearNavBarState createState() => _LinearNavBarState();
}

class _LinearNavBarState extends State<LinearNavBar> {
  int _currenctIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen(context),
      height: 340,
      child: ListView.builder(
        itemCount: buttoms().length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currenctIndex = index;
              });
            },
            child:
                buttoms(verify: index == _currenctIndex ? true : false)[index],
          );
        },
      ),
    );
  }

  List<ButtomNav> buttoms({bool verify}) {
    return [
      ButtomNav(
        isSelect: verify,
        icon: Icon(
          Icons.watch,
        ),
      ),
      ButtomNav(
        isSelect: verify,
        icon: Icon(
          Icons.check_box,
        ),
      ),
      ButtomNav(
        isSelect: verify,
        icon: Icon(
          Icons.looks,
        ),
      ),
      ButtomNav(
        isSelect: verify,
        icon: Icon(Icons.personal_video_sharp),
      ),
      ButtomNav(
          isSelect: verify,
          icon: Icon(
            Icons.graphic_eq,
          )),
      ButtomNav(
        isSelect: verify,
        icon: Icon(
          Icons.camera,
        ),
      ),
    ];
  }
}
