import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/API/merch.dart';
import 'package:shop/screens/catalog.dart';
import 'package:shop/screens/home_screen.dart';

class ItemView extends StatefulWidget {
  ItemView({Key? key}) : super(key: key);

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
            middle: Text("Специальный уход"),
            trailing: Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            )),
        child: Center(
            child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.fromLTRB(15, 115, 100, 300),
              height: 164,
              width: 164,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Positioned(
              top: -7,
              child: Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                child: const Divider(
                  color: Colors.black,
                ),
              ),
            ),
            IntrinsicHeight(
                child: Expanded(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                const Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: Colors.black,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Фильтры",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    )),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                const VerticalDivider(
                  width: 15,
                  color: Colors.black,
                  indent: 8,
                  endIndent: 8,
                ),
                const Icon(
                  CupertinoIcons.arrow_up_arrow_down,
                  color: Colors.black,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "По популярности",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    )),
              ],
            ))),
            Positioned(
                top: 40,
                child: Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 20,
                  child: const Divider(
                    color: Colors.black,
                  ),
                )),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.fromLTRB(200, 115, 15, 300),
              height: 164,
              width: 164,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.fromLTRB(15, 400, 100, 1),
              height: 164,
              width: 164,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(200, 400, 15, 1),
              height: 164,
              width: 164,
              decoration: BoxDecoration(color: Colors.blue),
            )
          ],
        )));
  }
}
