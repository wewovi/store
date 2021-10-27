// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xFFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          UniconsLine.shopping_cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          UniconsLine.angle_left_b,
                          size: 30,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          UniconsLine.heart_alt,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Image.asset(
                'assets/nicky2.png',
                height: 140,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 385,
                width: 450,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Nike Adapt BB",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                'Sisterhood',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                          Text("\$ 150",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Nike Unisex shoes",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/nicky3.png")),
                                color: Color(0xFFFF6F6F6),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/nicky2.png")),
                                color: Color(0xFFFF6F6F6),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/nicky2.png")),
                                color: Color(0xFFFF6F6F6),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/nicky2.png")),
                                color: Color(0xFFFF6F6F6),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            "Size Guide",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "40",
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "41",
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "42",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "43",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "44",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(UniconsLine.arrow_down, size: 30))
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Row(
                            children: [
                              Icon(UniconsLine.shopping_cart,
                                  color: Colors.white),
                              Text("Add to Cart",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
