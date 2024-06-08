import 'package:flutter/material.dart';
import 'package:test/Doctor_Screen/presentation/pages/Doctur_Home.dart';

import 'package:test/theme/colors.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool _isLoading = false;

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 4));

    setState(() {
      _isLoading = false;
    });

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const DocturHome(),
      ),
    );

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: AppColors.mid,
        content: const Text('You Have Successfully Signed In'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _handleLogin,
      style: ElevatedButton.styleFrom(
        backgroundColor: _isLoading ? AppColors.dark : AppColors.dark,
        padding: _isLoading
            ? const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 15,
              )
            : const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 15,
              ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
        ),
      ),
      child: _isLoading
          ? const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
            )
          : const Text(
              'LOGIN',
              style: TextStyle(color: AppColors.white),
            ),
    );
  }
}
