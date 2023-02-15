import 'package:flutter/cupertino.dart';

class Global {
  static List myProducts = [
    {
      'imagePath': 'assets/images/tshirt.jpg',
      'name': 'Zara T-Shirt',
      'price': '1299'
    },
    {
      'imagePath': 'assets/images/shopping.jpeg',
      'name': 'Being Women Jeans',
      'price': '1699'
    },
    {
      'imagePath': 'assets/images/shopping-2.jpeg',
      'name': 'Titan Sun-Glasses',
      'price': '4399'
    },
    {
      'imagePath': 'assets/images/shopping-3.jpeg',
      'name': 'Samsung Watch',
      'price': '31990'
    },
    {
      'imagePath': 'assets/images/shopping-4.jpeg',
      'name': 'Jack Belt',
      'price': '1499'
    },
    {
      'imagePath': 'assets/images/shopping-5.jpeg',
      'name': ' Being Women T-Shirt',
      'price': '1799'
    },
  ];

  static List myTabs = [
    {
      'icon': CupertinoIcons.home,
      'label': 'Home',
    },
    {
      'icon': CupertinoIcons.search,
      'label': 'Search',
    },
    {
      'icon': CupertinoIcons.cart,
      'label': 'Cart',
    },
  ];
}
