import 'package:ferme_app/constant/color.dart';
import 'package:ferme_app/pages/fermier.dart';
import 'package:ferme_app/pages/home.dart';
import 'package:ferme_app/pages/mon_compte.dart';
import 'package:ferme_app/pages/offre_marche.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //backgroundColor: Colors.black,
        // toolbarHeight: siz.height * 0.14,
        title: Container(
          child: Padding(
            padding: EdgeInsets.only(
                left: media.size.width * 0.02, right: media.size.width * 0.02),
            child: Row(
              children: [
                Image.asset(
                  "assets/isen.png",
                  height: 40,
                ),
                const Spacer(),
                icon_card(Icons.shopping_cart_outlined),
                icon_card(Icons.notifications_none_outlined),
              ],
            ),
          ),
        ),
      ),
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
              type: BottomNavigationBarType.shifting,
              unselectedFontSize: 18,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap: changeIndex,
              // selectedItemColor: Colors.amber,
              // unselectedItemColor: Colors.white,
              selectedFontSize: 18,
              currentIndex: index,
              backgroundColor: Color(0xFF51CA46),
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.home,
                      // color: index == 0 ? Colors.blue : null,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      // color: index == 1 ? Colors.blue : null,
                      "assets/image/Group 124.png",
                      height: siz.height * 0.029,
                      fit: BoxFit.cover,

                      //width: 35,
                    ),
                    label: "Offre du narché"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      // color: index == 2 ? Colors.blue : null,
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
