import 'package:flutter/material.dart';
import 'package:medi_app/component/bottomNaviGationBar.dart';
import 'package:medi_app/component/default.dart';
import 'package:medi_app/component/drawer.dart';
import 'package:medi_app/screen/CustomerhomeScreen.dart';

class CusScreen extends StatefulWidget {
  const CusScreen({super.key});

  @override
  State<CusScreen> createState() => _CusScreenState();
}

class _CusScreenState extends State<CusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
      ),
      drawer: const drawer_list(
        cus_name: 'Pasindu Dulanjana',
      ),
      body: const homePageScreen(),
      bottomNavigationBar: const bottom_bar(),
    );
  }
}
