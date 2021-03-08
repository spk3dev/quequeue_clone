import 'package:flutter/material.dart';
import 'package:myq_mobile/utils/size.dart';
class AdsCarouselWidget extends StatelessWidget {
  const AdsCarouselWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width:  wp(context, 100.0),
      child: Row(
        children: [Text("Ads Carousel")],
      ),
    );
  }
}