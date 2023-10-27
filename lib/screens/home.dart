import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/models/coffee.dart';
import 'package:flutter_application_coffee/screens/itemDeatils.dart';
import 'package:flutter_application_coffee/widgets/customer_search_field.dart';
import 'package:flutter_application_coffee/widgets/itemCard.dart';
import 'package:flutter_application_coffee/widgets/promo_button.dart';
import 'package:flutter_application_coffee/widgets/promo_card.dart';
import 'package:flutter_application_coffee/widgets/selected_button.dart';
import 'package:flutter_application_coffee/widgets/text_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double fontSize = 20.0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final List<Coffee> items = [
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_1.png',
          price: 4.53,
          subTitle: 'with Chocolote'),
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_2.png',
          price: 4.53,
          subTitle: 'with Chocolote'),
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_3.png',
          price: 3.90,
          subTitle: 'with Oat Milk'),
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_4.png',
          price: 4.53,
          subTitle: 'with Chocolote'),
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_1.png',
          price: 4.53,
          subTitle: 'with Chocolote'),
      Coffee(
          title: 'Cappucino',
          id: 'item01',
          imagePath: 'assets/home/cup_1.png',
          price: 4.53,
          subTitle: 'with Chocolote'),
    ];
    final List<String> categoryItems = [
      'Cappuccino',
      'Machiato',
      'Latte',
      'item 4',
      'item 5',
      'item 6',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 360,
                ),
                Container(
                  width: screenSize.width,
                  height: 280,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.black87],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location',
                                  style: TextStyle(
                                    color: Color(0xffB7B7B7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Bilzen,Tanjungbalai',
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xffffffff),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://placekitten.com/150/150',
                                width: 44,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const CustomerSearchField()
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 220.0,
                  left: 20.0,
                  right: 20.0,
                  child: Stack(
                    children: [
                      PromoCard(
                          imagePath: 'assets/home/coffee_promo.png',
                          screenSize: screenSize),
                      const Positioned(
                        top: 20,
                        left: 20,
                        child: PromoButton(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              child: SizedBox(
                height: 38,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (var item in categoryItems)
                      if (item == 'Cappuccino')
                        const SelectedButton()
                      else
                        CustomTextButton(item: item),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.7),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemDetails(
                                    coffeeItem: items[index],
                                  )),
                        );
                      },
                      child: ItemCard(
                          imagePath: items[index].imagePath,
                          price: items[index].price.toString(),
                          subTitle: items[index].subTitle,
                          title: items[index].title),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
