import 'package:ferme_app/widgets/offreCard.dart';
import 'package:flutter/material.dart';

class OffresScreen extends StatefulWidget {
  const OffresScreen({super.key});

  @override
  State<OffresScreen> createState() => _OffresScreenState();
}

class _OffresScreenState extends State<OffresScreen> {
  List offres = [const OffreCard(), const OffreCard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
              'assets/images/un-logo-minimale-tres-simple-a-retenir-sur-du-150x-150x-dune-application-de-gestion-des-champs-et-d 1 (Traced).png')
        ],
        title: Row(
          children: [
            Container(
              //color: Colors.green,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            const Text(
              "Mes offres",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Nouvelle offre",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.83,
              child: ListView.builder(
                  itemCount: offres.length,
                  itemBuilder: (context, index) {
                    return offres[index];
                  }),
            )
          ],
        ),
      ),
    );
  }
}
