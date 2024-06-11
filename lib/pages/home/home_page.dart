import 'package:cinema_popular/pages/auth/auth_service.dart';
import 'package:cinema_popular/pages/home/components/home_content.dart';
import 'package:cinema_popular/shared/widgets/my_drawer.dart';
import 'package:cinema_popular/shared/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(drawer: MyDrawer(), body: HomeContent());
  }
}
