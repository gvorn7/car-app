import 'package:flutter/material.dart';

class PhotoScrollView extends StatefulWidget {
  const PhotoScrollView({super.key});

  @override
  State<PhotoScrollView> createState() => _PhotoScrollViewState();
}

class _PhotoScrollViewState extends State<PhotoScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Color.fromARGB(255, 7, 255, 90),
        title: Center(
          child: Text(
            "Flutter Course",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Icon(Icons.message),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
          )
        ],
      ),
      body: SizedBox(
        // color: Colors.amber,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.southernliving.com/thmb/Rz-dYEhwq_82C5_Y9GLH2ZlEoYw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-837898820-1-4deae142d4d0403dbb6cb542bfc56934.jpg")),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.southernliving.com/thmb/Rz-dYEhwq_82C5_Y9GLH2ZlEoYw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-837898820-1-4deae142d4d0403dbb6cb542bfc56934.jpg")),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.southernliving.com/thmb/Rz-dYEhwq_82C5_Y9GLH2ZlEoYw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-837898820-1-4deae142d4d0403dbb6cb542bfc56934.jpg")),
                ),
              ),
              SizedBox(
                child: Container(
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    // alignment: Alignment.center,
                    // height: MediaQuery.of(context).size.height,
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(108, 59, 165, 252),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.redAccent, width: 2)),
                    child: Image.network(
                      "https://scontent.fbkk20-1.fna.fbcdn.net/v/t39.30808-6/405188451_756418113197502_5406908216066587750_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeEHsSVDwcTndOHrzbqfXd88tyaUSQOf4Mi3JpRJA5_gyLRIn6ZztOXpmHrmjgkr-ifDdnc5Zl_qbSNstjNzgC3r&_nc_ohc=fFU9qdswr8IAX-JDNsw&_nc_ht=scontent.fbkk20-1.fna&oh=00_AfDNP_v0ANC67yky5_DAmrVhD_0LVainQp29LBJoTLAf1g&oe=65BD8D7C",
                      fit: BoxFit.cover,
                    )
                    // Text(
                    //   "Name : Gvorn \nID : 007",
                    //   style: TextStyle(
                    //     fontSize: 24,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),

                    ),
              ),
            ],
          ),
          
          
        ),
        
      ),
      
    );
  }
}
