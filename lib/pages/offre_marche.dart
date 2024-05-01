import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffreMarche extends StatefulWidget {
  const OffreMarche({super.key});

  @override
  State<OffreMarche> createState() => _OffreMarcheState();
}

class _OffreMarcheState extends State<OffreMarche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: "Offre du Marché",
        ),
      ),
    );
  }
}
