import 'package:ferme_app/constant/color.dart';
import 'package:ferme_app/pages/fermier.dart';
import 'package:ferme_app/pages/home.dart';
import 'package:ferme_app/pages/mon_compte.dart';
import 'package:ferme_app/pages/offre_marche.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _pages = [Home(), OffreMarche(), Fermier(), MonCompte()];
  int index = 0;
  void changeIndex(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: index == 0 ? Color(0xFFB8F6B3) : Colors.white,
      body: _pages[index],
      bottomNavigationBar: Container(
        height: siz.height * 0.08,
        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              onTap: changeIndex,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.white,
              selectedFontSize: 18,
              currentIndex: 0,
              backgroundColor: Color(0xFF51CA46),
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.green,
                    icon: Icon(Icons.home),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        "assets/image/anounce.png",
                        height: siz.height * 0.028,
                        //width: 35,
                      ),
                    ),
                    label: "Offre du marché"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/image/man.png",
                      height: siz.height * 0.028,
                    ),
                    label: "Fermier"),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    label: "Mon compte")
              ]),
        ),
      ),
    );
  }
}
