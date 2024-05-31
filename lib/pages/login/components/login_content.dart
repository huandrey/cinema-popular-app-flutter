import 'package:cinema_popular/pages/auth/auth_service.dart';
import 'package:cinema_popular/pages/login/components/section_to_login_with_others_services.dart';
import 'package:cinema_popular/pages/login/login_controller.dart';
import 'package:cinema_popular/shared/components/my_button.dart';
import 'package:cinema_popular/shared/components/my_text_field.dart';
import 'package:cinema_popular/shared/components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginContent extends StatelessWidget {
  final Function() onRegister;

  LoginContent({
    super.key,
    required this.onRegister,
  });

  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    LoginController controller = LoginController();

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.theaters,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              'Cinema Popular',
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendExa(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                textBaseline: TextBaseline.ideographic,
                height: 1.5,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Democratizando o acesso ao cinema',
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendExa(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
                textBaseline: TextBaseline.ideographic,
              ),
            ),
            const SizedBox(height: 32),
            MyTextField(
              hintText: 'E-mail',
              controller: controller.emailController,
              onChanged: controller.setEmail,
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: 'Digite sua senha',
              controller: controller.passwordController,
              onChanged: controller.setPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 24,
            ),
            MyButton(
              label: 'Entrar',
              onTap: () => _signIn(context, controller),
            ),
            const SectionToLoginWithOthersServices(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  onTap: () => {},
                  imagePath: 'lib/assets/images/google.webp',
                ),
                // const SizedBox(
                //   width: 24,
                // ),
                // const SquareTile(
                //   imagePath: 'lib/assets/images/apple.png',
                // ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não possui uma conta?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      textBaseline: TextBaseline.ideographic,
                      letterSpacing: 0.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: onRegister,
                    child: Text(
                      ' Cadastrar-se',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        textBaseline: TextBaseline.ideographic,
                        color: Theme.of(context).colorScheme.primary,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _signIn(BuildContext context, LoginController controller) async {
    try {
      await auth.signIn(controller.userData);
    } catch (e) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Erro'),
              content: Text(e.toString()),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                )
              ],
            );
          },
        );
      }
    }
  }
}
