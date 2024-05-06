import 'package:ferme_app/pages/home.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Fermier extends StatefulWidget {
  const Fermier({super.key});

  @override
  State<Fermier> createState() => _FermierState();
}

class _FermierState extends State<Fermier> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FermierBox(media: media),
                    FermierBox(media: media),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FermierBox(media: media),
                    FermierBox(media: media),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FermierBox(media: media),
                    FermierBox(media: media),
                  ],
                ),
                // GridView.builder(
                //     shrinkWrap: true,
                //     itemCount: 3,
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //             mainAxisExtent: 165, crossAxisCount: 2),
                //     itemBuilder: (context, i) {
                //       return FermierBox(media: media);
                //     })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FermierBox extends StatelessWidget {
  const FermierBox({
    super.key,
    required this.media,
  });

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: media.size.height * 0.18,
        width: media.size.width * 0.45,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: media.size.height * 0.07,
                  width: media.size.width * 0.45,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Container(
                  height: media.size.height * 0.11,
                  width: media.size.width * 0.45,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                )
              ],
            ),
            Column(
              children: [
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/Ellipse 37.png",
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Gap(4),
                const MyText(
                  text: "Amagarai Guindo",
                  weight: FontWeight.bold,
                ),
                const Gap(10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MiniBox(texte: "Fruits"),
                    MiniBox(texte: "Légumes"),
                    MiniBox(texte: "+2")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MiniBox extends StatelessWidget {
  const MiniBox({
    super.key,
    required this.texte,
  });

  final String texte;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(3)),
      child: Center(
        child: MyText(
          text: texte,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
