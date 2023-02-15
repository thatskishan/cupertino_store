import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  DateTime data = DateTime.now();
  List month = [
    'Jan',
    'Feb',
    'Mar',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec',
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading: Text(
            "Shopping Cart",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                CupertinoIcons.profile_circled,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Name")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                CupertinoIcons.mail,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Email")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                CupertinoIcons.location,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Location")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.clock,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Delivery Time"),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                  "${month[data.month]} ${data.day}, ${data.year} ${data.hour}:${data.minute}"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: CupertinoDatePicker(
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (val) {
                                    setState(() {
                                      data = val;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: CupertinoListTile(
                          leading: Image.asset("assets/images/tshirt.jpg"),
                          title: const Text("Zara T-Shirts"),
                          subtitle: const Text("₹1799/-"),
                          trailing: const Text("₹1799/-"),
                        ),
                      ),
                      Card(
                        child: CupertinoListTile(
                          leading: Image.asset("assets/images/shopping-2.jpeg"),
                          title: const Text("Titan Sun-Glasses"),
                          subtitle: const Text("₹1799/-"),
                          trailing: const Text("₹4399/-"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Shipping : ₹179/-"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Tax : ₹1116/-"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Total : ₹7493/-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
