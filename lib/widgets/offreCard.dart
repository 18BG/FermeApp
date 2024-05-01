import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OffreCard extends StatelessWidget {
  const OffreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
                  SizedBox(
                    child: Image.asset("assets/images/selected.png"),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Banane",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("le 12-10-2024")
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
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
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
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
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
            child: Text(
              "500 Fcfa/kg",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
