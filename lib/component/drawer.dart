import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';
import 'package:medi_app/screen/login.dart';

class drawer_list extends StatelessWidget {
  const drawer_list({
    Key? key,
    required this.cus_name,
  }) : super(key: key);
  final String cus_name;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: KPrimaryColor),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
            ),
            accountName: Text(
              " $cus_name",
              style: TextStyle(fontSize: 18, letterSpacing: 1),
            ),
            accountEmail: null,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: KPrimaryColor,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: KPrimaryColor,
            ),
            title: const Text('Account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: KPrimaryColor,
            ),
            title: const Text('Setting'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: KPrimaryColor,
            ),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => login_Screen()));
            },
          ),
        ],
      ),
    );
  }
}
