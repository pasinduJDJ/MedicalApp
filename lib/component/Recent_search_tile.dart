import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';

class recent_Search_tiles extends StatelessWidget {
  const recent_Search_tiles({
    Key? key,
    required this.medi_name,
  }) : super(key: key);

  final String medi_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
          color: KPrimaryColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
              width: 280,
              height: 50,
              alignment: Alignment.center,
              child: Text("Medicine : $medi_name",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18))),
          Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: KSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "we Have This Medicine",
                ),
              ))
        ],
      ),
    );
  }
}
