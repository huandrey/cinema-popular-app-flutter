import 'package:cinema_popular/pages/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Widget body;
  final Widget? drawer;
  final bool? showLogoutAction;

  MyScaffold({
    super.key,
    this.title = '',
    this.backgroundColor,
    required this.body,
    this.drawer,
    this.showLogoutAction = false,
  });

  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Image.asset(
            'lib/assets/images/logo.png',
            width: 220,
            fit: BoxFit.contain,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.help_outline_rounded,
            ),
            onPressed: authService.logout,
          )
        ],
      ),
      drawer: drawer,
      body: body,
    );
  }
}
