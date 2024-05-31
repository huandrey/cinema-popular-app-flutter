import 'package:cinema_popular/pages/auth/auth_service.dart';
import 'package:cinema_popular/pages/register/register_controller.dart';
import 'package:cinema_popular/shared/components/my_button.dart';
import 'package:cinema_popular/shared/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterContent extends StatelessWidget {
  final Function() onLogin;

  RegisterContent({
    super.key,
    required this.onLogin,
  });

  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    RegisterController controller = RegisterController();

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
              hintText: 'Nick name',
              controller: controller.usernameController,
              onChanged: controller.setUsername,
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: 'E-mail',
              controller: controller.emailController,
              onChanged: controller.setEmail,
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: 'Senha',
              controller: controller.passwordController,
              onChanged: controller.setPassword,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            MyTextField(
              hintText: 'Confirme a senha',
              controller: controller.confirmPasswordController,
              obscureText: true,
              onChanged: controller.setConfirmPassword,
            ),
            const SizedBox(
              height: 24,
            ),
            MyButton(
              label: 'Cadastrar',
              onTap: () => _register(context, controller),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Já possui uma conta?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      textBaseline: TextBaseline.ideographic,
                      letterSpacing: 0.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: onLogin,
                    child: Text(
                      ' Entrar',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.primary,
                        textBaseline: TextBaseline.ideographic,
                        letterSpacing: 0.5,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _register(BuildContext context, RegisterController controller) {
    try {
      if (controller.validate() == true) {
        auth.signUpWithEmailAndPassword(controller.userData);
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Erro'),
              content: Text('Preencha todos os campos corretamente.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                )
              ],
            );
          },
        );
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Erro'),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              )
            ],
          );
        },
      );
    }
  }
}
