import 'package:flutter/material.dart';

const Color firstColor = Color(0xff1F1D2A);

class Data {
  String day;
  String dayOfWeek;

  Data({this.day, this.dayOfWeek});
}

widthScreen(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

heightScreen(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

List<Data> datas = [
  Data(day: 'S', dayOfWeek: '1'),
  Data(day: 'T', dayOfWeek: '2'),
  Data(day: 'Q', dayOfWeek: '3'),
  Data(day: 'Q', dayOfWeek: '4'),
  Data(day: 'S', dayOfWeek: '5'),
  Data(day: 'D', dayOfWeek: '6'),
  Data(day: 'S', dayOfWeek: '7'),
  Data(day: 'T', dayOfWeek: '8'),
  Data(day: 'Q', dayOfWeek: '9'),
  Data(day: 'Q', dayOfWeek: '10'),
  Data(day: 'Q', dayOfWeek: '11'),
  Data(day: 'S', dayOfWeek: '12'),
  Data(day: 'D', dayOfWeek: '13'),
  Data(day: 'S', dayOfWeek: '14'),
  Data(day: 'T', dayOfWeek: '15'),
  Data(day: 'Q', dayOfWeek: '16'),
  Data(day: 'Q', dayOfWeek: '17'),
  Data(day: 'S', dayOfWeek: '18'),
  Data(day: 'D', dayOfWeek: '19'),
  Data(day: 'Q', dayOfWeek: '30'),
  Data(day: 'Q', dayOfWeek: '31'),
];

cardIcon(String img, {double height = 25, bool border = false, double width = 0, double borderValue = 15}) {
  return Container(
    width: width == 0 ? height : width,
    height: height,
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(border == false ? 0 : borderValue),
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill)),
  );
}
