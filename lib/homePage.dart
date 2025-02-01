import 'package:flutter/material.dart';
import 'package:ui_design/model/item.dart';
import 'package:ui_design/model/popularProduct.dart';
import 'package:ui_design/model/specialProduct.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Specialproduct> special = List.empty(growable: true);
    special.add(specialpro("Smartphone", "8 Brands", "images/img1.jpg"));
    special.add(specialpro("Fashion", "24 Brands", "images/img2.jpg"));

    List<Item> item = List.empty(growable: true);
    item.add(items("Flash\n Deal", Icons.flash_on));
    item.add(items("Bill", Icons.article_outlined));
    item.add(items("Game", Icons.gamepad));
    item.add(items("Daily\n Gift", Icons.card_giftcard));
    item.add(items("More", Icons.more_time_rounded));

    List<Popularproduct> product = List.empty(growable: true);
    product.add(products("Game", "images/img3.png", "50.10\$"));
    product.add(products("Pants", "images/img4.png", "30.54\$"));
    product.add(products("Boots", "images/img5.png", "79.6\$"));

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: BottomNavigationBar(
                  backgroundColor: Color(0xffFFFFFF),
                  selectedItemColor: Color(0xffED9687),
                  unselectedItemColor: Color(0xffF7F7F7),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Color(0xffED9687)),
                      label: "*",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Color(0xffD5D5D5),
                        ),
                        label: "*"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.chat_bubble_outline_outlined,
                          color: Color(0xffD5D5D5),
                        ),
                        label: "*"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_2_outlined,
                          color: Color(0xffD5D5D5),
                        ),
                        label: "*"),
                  ]))),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            //1
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffE9E9EB)),
                      height: 50,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color(0xff9E9EA0),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Search product",
                                style: TextStyle(
                                    color: Color(0xff9E9EA0), fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffE9E9EB)),
                    child: const Icon(
                      Icons.shopping_cart_checkout_rounded,
                      color: Color(0xff9A9FA3),
                    ),
                  ),
                  Badge(
                    label: const Text("3"),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffE9E9EB)),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Color(0xff9A9FA3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            //2
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              width: double.infinity,
              height: 90,
              padding: EdgeInsets.only(top: 25, left: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff534592), Color(0xff7263B5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff534592)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A Summer Surprise",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffC3B9F5)),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Cashback 20%",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //4
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 110,
              child: ListView.builder(
                  itemCount: item.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFAE7E0),
                            ),
                            child: Icon(
                              item[i].iconname,
                              color: Color(0xffDA8C6E),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item[i].name,
                            style: TextStyle(color: Color(0xff848483)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            SizedBox(height: 5),

            //5
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Special for you",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4D4C4C)),
                      ),
                      Text(
                        "See More",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffB8B8B8)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  height: 100,
                  child: ListView.builder(
                      itemCount: special.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Container(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            width: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(special[i].image),
                                fit: BoxFit.cover,
                                opacity: 0.6,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  special[i].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  special[i].subtitle,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 10),
                //6
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Popular Product",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4D4C4C)),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffB8B8B8)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      margin: const EdgeInsets.only(top: 5, left: 10),
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: product.length,
                          itemBuilder: (ctx, i) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Card(
                                color: Color(0xffEDEEF2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 130,
                                      height: 140,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color(0xffEEEDF2)),
                                      child: Image.asset(
                                        product[i].image,
                                        //   height: 50,
                                      ),
                                    ),
                                    Container(
                                        child: Text(
                                      product[i].name,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff919596)),
                                    )),
                                    Container(
                                        child: Text(
                                      product[i].price,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff76222F)),
                                    )),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    ));
  }

  Specialproduct specialpro(String title, String subtitle, String image) {
    return Specialproduct(title: title, subtitle: subtitle, image: image);
  }

  Item items(String name, IconData iconname) {
    return Item(name: name, iconname: iconname);
  }

  Popularproduct products(String name, String image, String price) {
    return Popularproduct(name: name, price: price, image: image);
  }
}
//end
