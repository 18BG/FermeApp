import 'package:ferme_app/pages/connect/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  late PageController _pController;
  int _pIndex = 0;
  List<String> image = [
    "assets/image/onb1.png",
    "assets/image/onb2.png",
  ];
  @override
  void initState() {
    // TODO: implement initState
    _pController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pController,
                itemCount: image.length,
                itemBuilder: (context, i) {
                  return OnboardContent(imPath: image[i]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  "Bienvenue sur Farm App",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    print(_pIndex);
                    if (_pIndex < 1) {
                      setState(() {
                        _pIndex++;
                      });
                      _pController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    } else {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SignIn();
                      }));
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.green)),
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  final String imPath;
  const OnboardContent({super.key, required this.imPath});

  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    return Container(
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            width: siz.width,
            height: siz.height * 0.9,
            child: Image.asset(
              imPath,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
