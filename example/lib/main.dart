import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Demo',
      home: CarouselExample(),
    );
  }
}

class CarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          child: Carousel(
              height: 350.0,
              width: 350,
              initialPage: 3,
              allowWrap: false,
              type: Types.slideSwiper,
              onCarouselTap: (i) {
                print("onTap $i");
              },
              indicatorType: IndicatorTypes.bar,
              arrowColor: Colors.black,
              axis: Axis.horizontal,
              showArrow: false,
              children: List.generate(7, (i) => Center(child: Container(color: Colors.red),),),
              onPageChange:(value){
                print('------------------------------${value}');
              },
              showIndicator :false,
              indicatorBackgroundOpacity: 0.5,
              unActiveIndicatorColor:Colors.red,
              indicatorBackgroundColor:Colors.red,
              activeIndicatorColor:Colors.transparent,
          ),
        ),
      ),
    );
  }
}
