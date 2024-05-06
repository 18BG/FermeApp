import 'package:ferme_app/pages/home.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:ferme_app/widgets/offreCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class OffreMarche extends StatefulWidget {
  const OffreMarche({super.key});

  @override
  State<OffreMarche> createState() => _OffreMarcheState();
}

class _OffreMarcheState extends State<OffreMarche> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics:
            const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: SizedBox(
            // height: media.size.height,
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: media.size.height,
                child: Column(
                  children: [
                    Container(
                      //color: Colors.black,
                      height: media.size.height * 0.07,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RechercheField(
                            size: media.size.width * 0.8,
                          ),
                          const Gap(10),
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[400]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 500,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.grey[400]),
                                  ),
                                  const Gap(10),
                                  const Column(
                                    children: [
                                      MyText(
                                        text: "Moussa Diarra",
                                      ),
                                      MyText(
                                        text: "Koulikoro",
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Gap(15),
                              const Fruit(
                                ofre: true,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
