import 'package:app_tennis/core/color.dart';
import 'package:app_tennis/screens/details/details_screen.dart';
import 'package:app_tennis/widgets/customactionbuttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Container(
        width: Get.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CustomActionButton(
                      backgroundColor: AppColor.SecondDarkColor,
                      boxIcon: FontAwesomeIcons.bars,
                      iconColor: const Color.fromARGB(255, 245, 238, 238),
                    ),
                    const Expanded(child: Text("")),
                    CustomActionButton(
                      boxIcon: FontAwesomeIcons.magnifyingGlass,
                      backgroundColor: const Color.fromARGB(255, 255, 248, 248),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Clubs",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    CustomTrainCard(
                      image: 'assets/images/tennisplayer1.jpg',
                    ),
                    CustomTrainCard(
                      image: 'assets/images/tennisplayer2.jpg',
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CustomAcvityTrain extends StatelessWidget {
  const CustomAcvityTrain({
    Key? key,
    required this.image,
    required this.title,
    required this.labelTime,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String labelTime;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                labelTime,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(136, 110, 103, 103),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Expanded(child: Text("")),
          Container(
            alignment: Alignment.center,
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: AppColor.SecondDarkColor,
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              price,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto",
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTrainCard extends StatelessWidget {
  const CustomTrainCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  // final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 270,
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Women's \nClub",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "All levels",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Expanded(child: Text("")),
              const Text(
                "2 events",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
