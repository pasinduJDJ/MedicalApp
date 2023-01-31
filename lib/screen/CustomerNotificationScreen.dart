import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';
import 'package:medi_app/component/drawer.dart';
import 'package:medi_app/component/latestResponseTile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Respond"),
        centerTitle: true,
        backgroundColor: KPrimaryColor,
      ),
      drawer: const drawer_list(
        cus_name: 'Pasindu Dulanjana',
      ),
      body: Center(
        child: Container(
          width: 350,
          margin: const EdgeInsets.only(left: 10, top: 20, bottom: 5),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              latest_response_msg_box(
                statsus: 'We Have This Medicine',
                ShopName: 'CN Pharmacy',
                city: 'Kalubowila',
                medicine: 'Allopurinol',
                image:
                    'https://media.istockphoto.com/photos/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses-picture-id1144287292?b=1&k=20&m=1144287292&s=170667a&w=0&h=fvNKa6QuUa--cNv-oUXaHUBx8deD9iWgegvn76CtG_M=',
              ),
              SizedBox(
                height: 20,
              ),
              latest_response_msg_box(
                statsus: 'We Have This Medicine',
                ShopName: 'Apiit Pharmacy',
                city: 'Nugegoda',
                medicine: 'Biomedicalic',
                image:
                    'https://media.istockphoto.com/photos/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses-picture-id1144287292?b=1&k=20&m=1144287292&s=170667a&w=0&h=fvNKa6QuUa--cNv-oUXaHUBx8deD9iWgegvn76CtG_M=',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
