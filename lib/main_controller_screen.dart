import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'app_constants.dart';

class MainControllerScreen extends StatefulWidget {
  const MainControllerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainControllerScreenState();
}

class _MainControllerScreenState extends State<MainControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(bannerWelcomeImage,
                    height: MediaQuery.of(context).size.height / 4),
                Text(
                  bannerHeader,
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                Text(bannerTitle,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center),
                const SizedBox(height: 14),
                Text(bannerSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge),
                Lottie.asset(bannerCenterLogo,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 2.2),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: footerTitle,
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                          text: foorterPhoneNumber,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString(
                                  "tel:${foorterPhoneNumber.replaceAll(' ', '')}");
                            })
                    ])))
              ],
            ),
          ),
        ),
      )),
    );
  }
}


//+91 9605354997