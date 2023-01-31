import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medi_app/component/default.dart';

class bottom_bar extends StatelessWidget {
  const bottom_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KPrimaryColor,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          gap: 8,
          backgroundColor: KPrimaryColor,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: KSecondaryColor,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(icon: Icons.home_outlined, text: "Home"),
            GButton(icon: Icons.search_outlined, text: "Searches"),
            GButton(icon: Icons.notifications_outlined, text: "Notifications"),
            GButton(icon: Icons.settings_outlined, text: "Settings"),
          ],
        ),
      ),
    );
  }
}
