import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: SizedBox(
          height: media.size.height,
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.only(top: media.padding.top),
              //   child: Padding(
              //     padding: EdgeInsets.only(
              //         left: media.size.width * 0.02,
              //         right: media.size.width * 0.02),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           "assets/isen.png",
              //           height: 40,
              //         ),
              //         const Spacer(),
              //         icon_card(Icons.shopping_cart_outlined),
              //         icon_card(Icons.notifications_none_outlined),
              //       ],
              //     ),
              //   ),
              // ),
              const Gap(15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    RechercheField(),
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: media.size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Color(0xFFB8F6B3), Colors.white],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Column(
                                  children: [
                                    MyText(
                                      text: "18˚C",
                                      size: 17,
                                      weight: FontWeight.w600,
                                    ),
                                    MyText(
                                      text: "Nuageux",
                                      size: 17,
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                const Gap(30),
                                Image.asset(
                                  "assets/image/Screenshot_2024-05-01_at_2.46.08_PM-removebg-preview.png",
                                  height: 80,
                                )
                              ],
                            ),
                            const Gap(25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                etat_ambiant(
                                  media: media,
                                  etat: "Humidité",
                                ),
                                etat_ambiant(
                                  media: media,
                                  etat: "Humidité",
                                ),
                                etat_ambiant(
                                  media: media,
                                  etat: "Précipitations",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(media.size.height * 0.03),
              Expanded(
                child: Container(
                  width: media.size.width,
                  decoration: const BoxDecoration(
                      color: Color(0xFFB8F6B3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          topRight: Radius.circular(80))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        const MyText(
                          text: "Gérer votre champs",
                          weight: FontWeight.w800,
                          size: 18,
                        ),
                        Gap(media.size.height * 0.035),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            boxe(
                                media, "assets/image/forest.png", "Mon champs"),
                            boxe(media, "assets/image/home.png", "Mon Stock"),
                          ],
                        ),
                        Gap(media.size.height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            boxe(media, "assets/image/hand.png", "Mes offres"),
                            boxe(media, "assets/image/aro.png",
                                "Prix du marché"),
                          ],
                        ),
                        Gap(media.size.height * 0.035),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container boxe(MediaQueryData media, String image, String titre) {
    return Container(
      height: media.size.height * 0.16,
      width: media.size.width * 0.33,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                image,
                height: media.size.height * 0.07,
              ),
            ),
          ),
          const Gap(10),
          MyText(
            text: titre,
            weight: FontWeight.w600,
            size: 13,
          )
        ],
      ),
    );
  }

  Card icon_card(IconData? icon) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 25,
          color: Colors.green,
        ),
      ),
    );
  }
}

class RechercheField extends StatelessWidget {
  final double? size;
  const RechercheField({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size ?? siz.width,
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        style: const TextStyle(fontSize: 12),
        maxLines: 1,
        decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
                gapPadding: 2.0, borderRadius: BorderRadius.circular(30)),
            hintText: "Recherche",
            fillColor: const Color(0xFFB8F6B3)),
      ),
    );
  }
}

class etat_ambiant extends StatelessWidget {
  final String etat;
  const etat_ambiant({
    super.key,
    required this.media,
    required this.etat,
  });

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(text: etat),
        Container(
          height: media.size.height * 0.014,
          width: (media.size.width - 50) / 4.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
        )
      ],
    );
  }
}
