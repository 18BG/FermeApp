import 'package:ferme_app/pages/connect/otp_screen.dart';
import 'package:ferme_app/pages/connect/sign_up.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Gap(100),
              Center(
                child: Container(
                    height: 50, child: Image.asset("assets/image/isene2.png")),
              ),
              const Gap(25),
              const MyText(
                text: "Welcome back! Glad to see you again!",
                weight: FontWeight.bold,
                size: 25,
                textAlign: TextAlign.center,
              ),
              const Gap(15),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Phone Number",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.25, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.25, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const Gap(20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OtpScreen();
                  }));
                },
                child: Container(
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
              ),
              const Gap(60),
              Row(
                children: [
                  GreyLine(),
                  const MyText(
                    text: "Or Login with",
                  ),
                  GreyLine()
                ],
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  connectMethod(logo: "assets/image/face-removebg-preview.png"),
                  connectMethod(
                      logo: "assets/image/google-removebg-preview.png"),
                  connectMethod(
                      logo: "assets/image/apple-removebg-preview.png"),
                ],
              ),
              const Spacer(),
              // RichText(
              //   text: const TextSpan(children: [
              //     TextSpan(
              //         text: "Don't have an account? ",
              //         style: TextStyle(
              //             color: Colors.black, fontWeight: FontWeight.w500)),
              //     TextSpan(

              //         text: "Register Now",
              //         style: TextStyle(
              //             color: Colors.green,
              //             fontWeight: FontWeight.w600,
              //             fontSize: 16)),
              //   ]),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "Don't have an account? ",
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
                      text: "Register Now",
                      weight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}

class GreyLine extends StatelessWidget {
  const GreyLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          color: Colors.grey,
          height: 1,
        ),
      );
}

class connectMethod extends StatelessWidget {
  const connectMethod({
    super.key,
    required this.logo,
  });

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(30, 6, 30, 6),
      decoration: BoxDecoration(
          border: Border.all(width: 0.4, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Image.asset(
          logo,
          height: 50,
        ),
      ),
    );
  }
}
