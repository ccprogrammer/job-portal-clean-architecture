import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const route = '/sign-un';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(route),
      ),
    );
  }
}
