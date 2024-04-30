import 'package:ferme_app/pages/connect/sign_in.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Gap(40),
              Row(
                children: [
                  Gap(15),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(35),
              const MyText(
                text: "Hello! Register to get started",
                weight: FontWeight.bold,
                size: 25,
                textAlign: TextAlign.center,
              ),
              const Gap(50),
              textFill("Uername"),
              Gap(15),
              textFill("Phone Number"),
              const Gap(20),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: MyText(
                      text: "Send OTP",
                      color: Colors.white,
                      weight: FontWeight.w500,
                      size: 18,
                    ),
                  )),
              const Gap(60),
              Row(
                children: [
                  GreyLine(),
                  const MyText(
                    text: "Or Register with",
                  ),
                  GreyLine()
                ],
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  connectMethod(
                    logo: "assets/image/face-removebg-preview.png",
                  ),
                  connectMethod(
                      logo: "assets/image/google-removebg-preview.png"),
                  connectMethod(
                      logo: "assets/image/apple-removebg-preview.png"),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "Already have an account? ",
                    weight: FontWeight.w500,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUp();
                      }));
                    },
                    child: MyText(
                      text: "Login Now",
                      weight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }

  Container textFill(String hint) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            hintText: hint,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
