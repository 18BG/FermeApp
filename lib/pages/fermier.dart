import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fermier extends StatefulWidget {
  const Fermier({super.key});

  @override
  State<Fermier> createState() => _FermierState();
}

class _FermierState extends State<Fermier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: "Fermier",
        ),
      ),
    );
  }
}
