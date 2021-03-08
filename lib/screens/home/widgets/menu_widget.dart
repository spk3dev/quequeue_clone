import 'package:flutter/material.dart';
import 'package:myq_mobile/utils/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _border = wp(context, 3);
    return Container(
        padding: EdgeInsets.all(wp(context, 2)),
        child: Column(children: [
          Text("Which services you want to use today ?"),
          GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: (1.6),
              children: List.generate(6, (index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_border),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.4,
                            blurRadius: 4,
                            offset:
                                Offset(0, 2.5), // changes position of shadow
                          ),
                        ]),
                    margin: EdgeInsets.all(hp(context, 0.8)),
                    child: Material(
                      borderRadius: BorderRadius.circular(_border),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(_border),
                        splashColor: Colors.transparent,
                        onTap: () {
                          print("test");
                        },
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                  "https://svgsilh.com/svg/1801287.svg",
                                  width: wp(context, 16),
                                  height: hp(context, 10)),
                              Text("JOJO")
                            ],
                          ),
                        ),
                      ),
                    ));
              })),
        ]));
  }
}
