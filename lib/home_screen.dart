import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: headWidget(),
            ),
            Expanded(
              flex: 1,
              child: midWidget(),
            ),
            const Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Deals",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "More",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.chevron_right, color: Colors.blue)
                    ],
                  )
                ],
              ),
            ),
            buttomallcarWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(117, 72, 144, 245)),
                      child:const Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:  Center(
                          child: Row(
                            children: [SizedBox(width: 5,),
                               Icon(
                                Icons.directions_car,
                                color: Colors.blue,
                                size: 32,
                              ),SizedBox(width: 5,),
                              Text("Home",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.local_mall,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.arrow_circle_up,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded buttomallcarWidget() {
    return Expanded(
        flex: 3,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 230,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset("assets/images/btt1.png"),
                        SizedBox(
                          height: 25,
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text("New Arrival"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                                child: Text(
                              "Free 🧧",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 230,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/tesla1.png"),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("New Arrival"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                                child: Text(
                              "Free 🧧",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 230,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/btt1.png"),
                        SizedBox(
                          height: 25,
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("New Arrival"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                                child: Text(
                              "Free 🧧",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Padding midWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Available Car",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Long Term and Short Term",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 38,
                    weight: 900,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container headWidget() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 220, 233, 220),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [
                headerWidget(),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PageView(
                    // scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Image.asset("assets/images/tesla1.png"),
                      Image.asset("assets/images/tesla3.png"),
                      Image.asset("assets/images/tesla2.png"),
                    ],
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(),
                  onDotClicked: (index) {},
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Full Option",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.chevron_right, color: Colors.blue)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row headerWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    width: 4, color: Color.fromARGB(255, 26, 24, 19))),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/me.jpg")),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                      text: "IDK",
                      children: [
                    TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        text: " 17,7t")
                  ])),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
