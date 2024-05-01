import 'package:ferme_app/bottom_nav.dart';
import 'package:ferme_app/pages/home.dart';
import 'package:ferme_app/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: media.padding.top),
            child: Row(
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
          ),
          const Gap(35),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OTP Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Gap(10),
                MyText(
                  text:
                      "Enter the verfication code we just sent on your phone number",
                  color: Colors.grey.shade500,
                  size: 16,
                ),
              ],
            ),
          ),
          Gap(35),
          Padding(
            padding: EdgeInsets.only(
                left: media.size.width * 0.04, right: media.size.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                otp_input(media, context),
                otp_input(media, context),
                otp_input(media, context),
                otp_input(media, context),
              ],
            ),
          ),
          const Gap(20),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BottomNav();
              }));
            },
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF51CA46),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: MyText(
                    text: "Verify",
                    color: Colors.white,
                    weight: FontWeight.w500,
                    size: 18,
                  ),
                )),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "Didn't receive code? ",
                weight: FontWeight.w500,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) {
                  //   return SignUp();
                  // }));
                },
                child: MyText(
                  text: "Resend",
                  weight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Gap(15),
        ],
      ),
    );
  }

  SizedBox otp_input(MediaQueryData media, BuildContext context) {
    return SizedBox(
        height: 64,
        width: media.size.width / 6,
        child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          //style: Theme.of(context).textTheme.headlineMedium,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            hintText: "",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ));
  }
}
