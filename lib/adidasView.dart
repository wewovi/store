// ignore_for_file: file_names, non_constant_identifier_names

//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AdidasView extends StatefulWidget {
  const AdidasView({Key? key}) : super(key: key);

  @override
  State<AdidasView> createState() => _AdidasViewState();
}

class _AdidasViewState extends State<AdidasView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          UniconsLine.shopping_cart,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        UniconsLine.angle_left_b,
                        size: 30,
                        color: Colors.black,
                      )),
                  //const SizedBox(width: 130),
                  Image.asset('assets/adidas.png', height: 30),
                  // const SizedBox(width: 130),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(UniconsLine.search),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ProductTileWidget();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 20);
                    },
                    itemCount: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.defer,
      onTap: () {
        print("you clicked on the inkwell tap");
      },
      child: Container(
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFE8EFFF),
        ),
        child: Row(
          children: [
            Image.asset('assets/sneaker.png'),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Men Running Shoes",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Nike React Miller",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 15,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 10,
                      ),
                      onRatingUpdate: (rating) {
                        // ignore: avoid_print
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("(60)"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "\$10.000",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
