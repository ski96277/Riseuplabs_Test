import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarasoulSlider extends StatefulWidget {
  List<String> bannerList;

  CarasoulSlider(this.bannerList);

  @override
  _CarasoulSliderState createState() => _CarasoulSliderState(bannerList);
}

class _CarasoulSliderState extends State<CarasoulSlider> {
  List<String> bannerList;

  _CarasoulSliderState(this.bannerList);

  int _currentIndex = 0;

  List cardList = [];
  bool isBuildCall= false;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    if(!isBuildCall){
      for (int i = 0; i < bannerList.length; i++) {
        cardList.add(Item1(bannerList[i]));
      }
      isBuildCall=true;
    }

    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 120.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: card,
                );
              });
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: 5.0,
                height: 5.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.deepOrangeAccent : Colors.grey[600],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
//this is push

class Item1 extends StatelessWidget {
  String bannerClass;

  Item1(this.bannerClass);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("${bannerClass}"), fit: BoxFit.cover), borderRadius: BorderRadius.circular(5.0)),
    );
  }
}
