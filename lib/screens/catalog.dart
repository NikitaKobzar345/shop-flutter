import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/models/product_categories.dart';
import 'package:shop/API/productCategories.dart';
import 'package:shop/screens/goods.dart';
import 'package:shop/screens/home_screen.dart';
import 'package:shop/main.dart';
import 'on_develop_screen.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  // late Future<ProductCategories?> futureProduct;
  // @override
  // void initState() {
  //   super.initState();
  //   futureProduct = fetchproductCategories() as Future<ProductCategories?>;
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black,
            onPressed: () {},
          ),
          middle: Text("Для лица"),
        ),
        child: Material(
            child: FutureBuilder<List<Map<String, dynamic>>?>(
          future: fetchproductCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  const Divider(
                    thickness: 50,
                    height: 40,
                  );
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => ItemView()));
                    },
                    title: Text(snapshot.data![index]['title']),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
            // child: ListView(
            //   children: [
            //     const Divider(
            //       height: 1,
            //     ),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Все товары категории",
            //         style: TextStyle(color: Colors.red[900], fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(context,
            //             CupertinoPageRoute(builder: (context) => ItemView()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),

            //       title: Text(
            //         "Очищение",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Интенсивное восстановление",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Тоники",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Кремы",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Маски",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Специальный уход",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(context,
            //             CupertinoPageRoute(builder: (context) => ItemView()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Сыворотки",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Для губ",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       title: Text(
            //         "Масла",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       // ignore: prefer_const_constructors
            //       title: Text(
            //         "Мужчинам",
            //         style: TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //     ListTile(
            //       dense: true,
            //       // ignore: prefer_const_constructors
            //       trailing: Icon(
            //         Icons.arrow_forward_ios,
            //         color: Colors.grey,
            //       ),
            //       // ignore: prefer_const_constructors
            //       title: Text(
            //         "Печатная продукция",
            //         style: const TextStyle(color: Colors.black, fontSize: 17),
            //       ),
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             CupertinoPageRoute(
            //                 builder: (context) => const OnDevelop()));
            //       },
            //     ),
            //     const Divider(),
            //   ],
            // ),
            ));
  }
}
