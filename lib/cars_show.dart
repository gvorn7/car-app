import 'package:flutter/material.dart';
import 'package:flutter_application_day1/model/cars_slide.dart';

class ShowCarPage extends StatefulWidget {
  const ShowCarPage({super.key});

  @override
  State<ShowCarPage> createState() => _ShowCarPageState();
}

class _ShowCarPageState extends State<ShowCarPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    topIcon(
                      icon: Icons.arrow_back_outlined,
                    ),
                    Row(
                      children: [
                        topIcon(icon: Icons.bookmark, color: Colors.blue),
                        SizedBox(
                          width: 10,
                        ),
                        topIcon(
                          icon: Icons.share,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Camaro",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Chevrolet Yellow",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "New Arrival !!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(97, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: PageView.builder(
                      itemCount: cars.length,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  cars[i].img,
                                  // height: 300,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        cars.length, (index) => dotview(index, context)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxOption(
                      textoption: "Full Option",
                      price: " 30,000",
                      type: "USA",
                    ),
                    BoxOption(
                      textoption: "Mid Option",
                      price: " 20,000",
                      type: "JP",
                    ),
                    BoxOption(
                      textoption: "Normal ",
                      price: " 15,000",
                      type: "CAM",
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "SPECCIFICATIONS",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      scecificBox(
                          headtext: "สี",
                          dettext: "สีเหลือง",
                          color: Colors.amber),
                      SizedBox(
                        width: 5,
                      ),
                      scecificBox(
                          headtext: "Sets", dettext: "4  ที่นั่ง", color: null),
                      SizedBox(
                        width: 5,
                      ),
                      scecificBox(
                          headtext: "บริการดูแลรถยนต์",
                          dettext: "1 ปี",
                          color: null),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 176, 255, 176),
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Column(
                            children: [
                              Text(
                                "ส่วนลด",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              Text(
                                "Up to 25 % ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("สั่งซื้อตอนนี่",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),)),
                              ),
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container scecificBox({required headtext, required dettext, required color}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      height: 80,
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headtext,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  dettext,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(50)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container BoxOption({required textoption, required price, required type}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 90,
      width: 125,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textoption,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            type,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Container dotview(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 40 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 40, 37),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Container topIcon({required IconData icon, Color color = Colors.white}) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(icon),
    );
  }
}
