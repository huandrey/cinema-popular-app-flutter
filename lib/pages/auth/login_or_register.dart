import 'package:cinema_popular/pages/login/login_page.dart';
import 'package:cinema_popular/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool isLoginPage = true;

  void togglePage() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPage == true) {
      return LoginPage(
        onRegister: togglePage,
      );
    } else {
      return RegisterPage(
        onLogin: togglePage,
      );
    }
  }
}
