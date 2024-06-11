import 'package:cinema_popular/pages/settings/widgets/settings_content.dart';
import 'package:cinema_popular/shared/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: const SettingsContent(),
    );
  }
}
