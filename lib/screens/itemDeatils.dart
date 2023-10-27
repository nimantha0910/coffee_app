import 'package:flutter/material.dart';

import 'package:flutter_application_coffee/models/coffee.dart';
import 'package:flutter_application_coffee/widgets/custom_button.dart';
import 'package:flutter_application_coffee/widgets/size_button.dart';

class ItemDetails extends StatelessWidget {
  final Coffee coffeeItem;
  const ItemDetails({
    super.key,
    required this.coffeeItem,
  });
  final String logText =
      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
            )),
        title: const Text(
          'Details',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff2f2d2c),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  coffeeItem.imagePath,
                  height: 226,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                coffeeItem.title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2f2d2c),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                coffeeItem.subTitle,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9b9b9b),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xfffbbe21),
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2f2d2c),
                        ),
                      ),
                      Text(
                        '(230)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff808080),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/icon_1.png'),
                      Image.asset('assets/icons/icon_2.png'),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2f2d2c),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      logText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text('Log Content'),
                          content: Text(logText),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text(
                      'Read More',
                      style: TextStyle(
                        color: Color(0xffc67c4e),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2f2d2c),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizeButton(
                    size: 'S',
                  ),
                  SizeButton(
                    isSelected: true,
                    size: 'M',
                  ),
                  SizeButton(
                    size: 'L',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9b9b9b),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '\$ ${coffeeItem.price}',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffc67c4e),
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    title: 'Buy Now',
                    width: 218.0,
                    tap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
