import 'package:flutter/material.dart';

class ButtomNav extends StatefulWidget {
  bool isSelect = false;
  Icon icon;

  ButtomNav({this.isSelect, this.icon});

  @override
  _ButtomNavState createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: double.infinity,
          height: 40,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Row(
            children: [
              Container(
              //  duration: Duration(milliseconds: 400),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: widget.isSelect == true
                        ? Color(0xffE0F4F1)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    widget.icon.icon,
                    color: widget.isSelect == true
                        ? Color(0xff00A389)
                        : Colors.grey.shade300,
                  ),
                ),
              ),
              Spacer(),
              AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  height: 40,
                  width: 4,
                  color: widget.isSelect == true
                      ? Color(0xff00A389)
                      : Colors.transparent),
            ],
          )),
    );
  }
}
