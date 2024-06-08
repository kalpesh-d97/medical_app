import 'package:flutter/material.dart';
import 'package:test/Doctor_Screen/presentation/pages/Doctur_Home.dart';
import 'package:test/Sign_in/presentation/pages/Signin_Page.dart';
import 'package:test/Sign_up/presentation/pages/Signup_Page.dart';

import 'package:test/theme/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var isLargeScreen = screenWidth > 800;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.light,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (isLargeScreen)
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/index.png"),
                            ],
                          ),
                        ),
                      ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SAPDOS',
                                style: TextStyle(
                                  fontSize: isLargeScreen ? 38 : 28,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.dark,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 160),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 60.0, left: 60),
                                child: Text(
                                  'Login to your sapdos account or create one now.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: isLargeScreen ? 19 : 22,
                                    color: AppColors.dark,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 70),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.dark,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 80,
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Signup(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 70,
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side:
                                        const BorderSide(color: AppColors.dark),
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                child: const Text(
                                  'SIGN-UP',
                                  style: TextStyle(color: AppColors.dark),
                                ),
                              ),
                              const SizedBox(height: 80),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DocturHome(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Proceed as a Guest',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
