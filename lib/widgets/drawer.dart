import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageUrl =
      "https://scontent.flhe5-1.fna.fbcdn.net/v/t39.30808-6/278031329_2234708583352904_5000535474931109173_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFRwvo1klec5WY3RomFCsGfLCtfGie69iwsK18aJ7r2LG8PDDrqpnv16Cd9xjRF1b00tEjbt4YX1Awe_c6UznLS&_nc_ohc=WrPIjLHfrcAAX8sRTXS&_nc_ht=scontent.flhe5-1.fna&oh=00_AT9oVnDz8FZiCqM1DUTvkjBdAvkr4H2DdO-6B4mSggh1YA&oe=62522AAE";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // decoration: const BoxDecoration(color: Colors.blue),
                  accountName: const Text("Muhammad Bilal"),
                  accountEmail: const Text("mbilalabid800@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
