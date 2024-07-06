import 'package:flutter/material.dart';
import 'package:flutter_alin/detail_article.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Masuk',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 82, 13, 1))),
                const SizedBox(height: 2),
                const Text('Masukkan Username dan Kata Sandi Anda',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                const SizedBox(height: 40),
                SizedBox(
                  width: 335,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Username / Email',
                        hintText: 'Masukkan Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 335,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukkan Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: 335,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailArticlePage()),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(243, 82, 13, 1)),
                      ),
                      child: const Text('Masuk'),
                    )),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Tidak punya akun? '),
                    const Text('Daftar Disini',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(243, 82, 13, 1),
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
