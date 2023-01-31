import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';

class title_width_icon extends StatelessWidget {
  const title_width_icon({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(fontSize: 14, letterSpacing: 0),
            ),
            const Spacer(),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              color: KPrimaryColor,
              child: const Text(
                "more",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
