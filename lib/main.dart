import 'package:cupertino_store/screens/cartpage.dart';
import 'package:cupertino_store/screens/homepage.dart';
import 'package:cupertino_store/screens/searchpage.dart';
import 'package:flutter/cupertino.dart';

import 'Data/globals.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: Global.myTabs
                  .map(
                    (e) => BottomNavigationBarItem(
                      icon: Icon(e['icon']),
                      label: e['name'],
                    ),
                  )
                  .toList(),
            ),
            tabBuilder: (context, i) {
              if (i == 0) {
                return const HomePage();
              } else if (i == 1) {
                return const SearchPage();
              } else if (i == 2) {
                return const CartPage();
              }
              return Container();
            },
          );
        },
      ),
    ),
  );
}
