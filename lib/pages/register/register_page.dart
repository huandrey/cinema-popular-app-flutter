import 'package:cinema_popular/pages/register/widgets/register_content.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final Function() onLogin;
  const RegisterPage({
    super.key,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: RegisterContent(
        onLogin: onLogin,
      ),
    );
  }
}
