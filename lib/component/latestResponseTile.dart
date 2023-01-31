import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';

class latest_response_msg_box extends StatelessWidget {
  const latest_response_msg_box({
    Key? key,
    required this.ShopName,
    required this.city,
    required this.medicine,
    required this.statsus,
    required this.image,
  }) : super(key: key);

  final String ShopName, city, medicine, statsus, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: KPrimaryColor,
      ),
      child: Column(
        children: [
          ///////////////////////////////////1st Row
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses-picture-id1144287292?b=1&k=20&m=1144287292&s=170667a&w=0&h=fvNKa6QuUa--cNv-oUXaHUBx8deD9iWgegvn76CtG_M= '),
                    radius: 50,
                  )),
              Container(
                  // color: Colors.black,
                  width: 180,
                  height: 70,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: 170,
                        height: 35,
                        child: Text(
                          ShopName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 170,
                        height: 20,
                        child: Text(
                          city,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          ///////////////////////////////////2nd Row
          Row(),
          /////////////////////////////////////////2nd Row
          Text(
            "Medicine :$medicine",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          /////////////////////////////////////////4th Row
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 250,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: KSecondaryColor,
            ),
            child: Row(children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 40),
                child: Text(statsus),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
