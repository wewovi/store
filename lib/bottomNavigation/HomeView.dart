// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:ui';

import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:store/JordanView.dart';
import 'package:store/Notification.dart';
import 'package:store/bottomNavigation/contact.dart';
import 'package:store/bottomNavigation/profile.dart';
import 'package:store/bottomNavigation/search.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> namesCategory = [
    'ALL',
    'Nike',
    'Jordan',
    'Puma',
    'Adidas',
    'New Balance'
  ];

  final List<String> ImagesList = [
    'assets/nicky2.png',
    'assets/nicky3.png',
    'assets/niky.png',
    'assets/sneaker.png'
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          UniconsLine.shopping_cart,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xFFFF5F8FF),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
                _currentIndex = value;
                // FIX: NAvigate to selected page
                if (_currentIndex == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactView()));
                } else if (_currentIndex == 2) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchView()));
                } else if (_currentIndex == 3) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileView()));
                }
              }),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  UniconsLine.home_alt,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.chat, size: 30), label: "Contact Us"),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.search, size: 30), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.user, size: 30), label: "Profile"),
          ]),
      //items: BottomNavigationBarItem(icon: UniconsLine.hom)

      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/profile.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF92CBFD),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome!!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Mary Yaa Mensah",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // ignore: prefer_const_constructors
                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.blue,
                              context: context,
                              builder: (context) {
                                return Container(
                                    height: 500,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(20),
                                        right: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column());
                              });
                        },
                        child: const Icon(
                          UniconsLine.bell,
                          size: 40,
                          color: Color(0xFFFD7D8DF),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 500,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3B97F1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Pamper your feet",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "With our shoes!!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                    onPressed: null,
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      "Explore",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                        child: Image.asset(
                          "assets/nicky3.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      //fontSize: 20,
                      // color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 50,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const CategoryWidget();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: namesCategory.length),
              ),
            ),
            // const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Popular",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            CarouselImages(
              scaleFactor: 0.6,
              listImages: ImagesList,
              height: 100.0,
              borderRadius: 20.0,
              cachedNetworkImage: true,
              verticalAlignment: Alignment.topCenter,
              onTap: (index) {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Column(children: const [
                    Text("Nike Adapt BB",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Men Running Shoes",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey)),
                  ]),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/bag.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        // height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        child: const Center(
          child: Text(
            "All",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
