import 'package:flutter/material.dart';
import 'package:test/Sign_in/presentation/pages/Signin_Page.dart';


import 'package:test/theme/colors.dart';

const appColors = AppColors();

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var isLargeScreen = screenWidth > 800;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppColors.light,
          child: Row(
            children: [
              // Left side illustration
              if (isLargeScreen)
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Image.asset('assets/images/index.png'),
                  ),
                ),
              // Right side registration form
              Expanded(
                flex: 3,
                child: Center(
                  child: Container(
                    width: screenWidth,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        ),
                      ),
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "SAPDOS",
                              style: TextStyle(
                                fontSize: 58,
                                fontWeight: FontWeight.w900,
                                color: AppColors.dark,
                              ),
                            ),
                            const SizedBox(height: 46),
                            const Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: AppColors.dark,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Enter new account's details",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.gray,
                              ),
                            ),
                            const SizedBox(height: 42),
                            const SizedBox(
                              height: 60,
                              width: 290,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email address/ Phone No.',
                                  border: OutlineInputBorder(),
                                  prefixIcon:
                                      Icon(Icons.mail, color: AppColors.dark),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const SizedBox(
                              height: 60,
                              width: 290,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                  prefixIcon:
                                      Icon(Icons.lock, color: AppColors.dark),
                                  suffixIcon: Icon(Icons.visibility_off),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const SizedBox(
                              height: 60,
                              width: 290,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder(),
                                  prefixIcon:
                                      Icon(Icons.lock, color: AppColors.dark),
                                  suffixIcon: Icon(Icons.visibility_off),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            SizedBox(
                              width: 290,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Implement sign-up functionality
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.dark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: const Text(
                                  'SIGN-UP',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignIn(),
                                  ),
                                );
                              },
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Already on Sapdos? ',
                                  style: TextStyle(color: AppColors.gray),
                                  children: [
                                    TextSpan(
                                      text: 'Sign-in',
                                      style: TextStyle(
                                        color: AppColors.dark,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
