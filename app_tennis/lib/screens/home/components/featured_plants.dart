import 'package:app_tennis/core/color.dart';
import 'package:app_tennis/screens/home/components/recommended_plants.dart';
import 'package:app_tennis/widgets/customactionbuttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
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
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Train",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryDarkColor),
                    ),
                    const Expanded(child: Text("")),
                    Text(
                      "Alles",
                      style: TextStyle(
                          fontSize: 20, color: AppColor.SecondDarkColor),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10),
              const CustomAcvityTrain(
                image: 'assets/images/yogaIcon.jpg',
                title: 'Yoga & Tennis  ',
                labelTime: 'Feb 28 | 10:00am - 11:00 am',
                price: r'$10',
              ),
              const CustomAcvityTrain(
                image: 'assets/images/iconTennis.jpg',
                title: 'Beginner BootCamp  ',
                labelTime: 'July 17 | 12:00pm - 3:00 pm',
                price: r'$15',
              ),
              const CustomAcvityTrain(
                image: 'assets/images/arm3d.jpg',
                title: 'Men\'s league',
                labelTime: 'Feb 27 | 10:00am - 11:00 am',
                price: r'$30',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    key,
    required this.image,
  }) : super(key: key);

  final String image;

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
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Train",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryDarkColor),
                    ),
                    const Expanded(child: Text("")),
                    Text(
                      "Alles",
                      style: TextStyle(
                          fontSize: 20, color: AppColor.SecondDarkColor),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10),
              const CustomAcvityTrain(
                image: 'assets/images/yogaIcon.jpg',
                title: 'Yoga & Tennis  ',
                labelTime: 'Feb 28 | 10:00am - 11:00 am',
                price: r'$10',
              ),
              const CustomAcvityTrain(
                image: 'assets/images/iconTennis.jpg',
                title: 'Beginner BootCamp  ',
                labelTime: 'July 17 | 12:00pm - 3:00 pm',
                price: r'$15',
              ),
              const CustomAcvityTrain(
                image: 'assets/images/arm3d.jpg',
                title: 'Men\'s league',
                labelTime: 'Feb 27 | 10:00am - 11:00 am',
                price: r'$30',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
