import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sstream/komponen/teks_field.dart';
import 'package:sstream/komponen/tombol.dart';
import 'package:sstream/services/auth/auth_service.dart';

class RegisPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisPage({super.key, required this.onTap});

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  // teks kontrol
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confimrPasswordController = TextEditingController();

  void signUp() async {
    if (passwordController.text != confimrPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password do not match'),
        ),
      );
    }

    // get out service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signUpWithEmailandPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.mark_chat_unread_rounded,
                    size: 100,
                    color: Colors.grey[800],
                  ),

                  const SizedBox(height: 50),

                  //pesan buat akun
                  const Text(
                    "let's create an account f u",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //email text
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //password teks
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  //konfirmasi password teks
                  MyTextField(
                    controller: confimrPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  //sign up button
                  Tombol(onTap: signUp, teks: 'Sign Up'),

                  const SizedBox(height: 50),

                  //belum punya akun? buat sekarang
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('already have an akun?'),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
