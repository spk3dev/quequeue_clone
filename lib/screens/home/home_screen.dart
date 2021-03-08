import 'package:flutter/material.dart';
import 'widgets/ads_carousel_widget.dart';
import 'widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Myq"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [AdsCarouselWidget(), MenuWidget()],
        ),
      ),
    );
  }
}
