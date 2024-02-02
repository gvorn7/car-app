import 'package:flutter/material.dart';

class HomePageCars extends StatefulWidget {
  const HomePageCars({super.key});

  @override
  State<HomePageCars> createState() => _HomePageCarsState();
}

class _HomePageCarsState extends State<HomePageCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Column(children: [
        Container(
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 1),
                ),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1, -1),
                    blurRadius: 1,
                    spreadRadius: 1),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.shade200,
                  // Colors.grey.shade300,
                ],
              ),
            ),
            child: Row(children: [
              Container(
                height:20 ,
                width: 20,
                color: Colors.amber,
              )
            ],),
            ),
      ]),
    );
  }
}
