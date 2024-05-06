import 'package:ferme_app/constant/color.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class OffreCard extends StatelessWidget {
  const OffreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Fruit(
        ofre: false,
      ),
    );
  }
}

class Fruit extends StatelessWidget {
  final bool ofre;
  const Fruit({
    super.key,
    required this.ofre,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              fit: BoxFit.fill,
              "assets/images/offreMainImage.png",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset("assets/images/selected.png"),
                ),
                SizedBox(
                  child: Image.asset("assets/images/selected.png"),
                ),
                SizedBox(
                  child: Image.asset("assets/images/selected.png"),
                ),
                SizedBox(
                  child: Image.asset("assets/images/selected.png"),
                ),
                // SizedBox(
                //   child: Image.asset("assets/images/selected.png"),
                // )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: "Banane",
                weight: FontWeight.bold,
              ),
              MyText(
                text: "le 12-10-2024",
                size: 12,
                weight: FontWeight.w500,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 65,
                decoration: BoxDecoration(
                    color: pColor, borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Fruit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 65,
                decoration: BoxDecoration(
                    color: pColor, borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Bio",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Spacer(),
              Text(
                "500 Fcfa/kg",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        Gap(10),
        ofre
            ? Container(
                padding:
                    EdgeInsets.only(left: 35, right: 35, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: pColor, borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MyText(
                      text: "Appeler",
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    Gap(15),
                    Center(
                      child: ClipOval(
                        clipper: CustomClip(),
                        child: Container(
                          width: 25,
                          height: 15,
                          color: Colors.grey[400],
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Container()
      ],
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 1, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
