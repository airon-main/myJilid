import "package:flutter/material.dart";
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gap/gap.dart';
import 'package:my_flutter/colorpallette.dart';
import 'package:my_flutter/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        _usernameFocusNode.unfocus();
        _passFocusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: Svg('assets/images/login_background.svg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 250,
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sign in to your Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Masuk ke akun mu",
                        style: TextStyle(color: colorLight[0]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        onTap: () {
                          setState(() {});
                        },
                        cursorColor: colorNormal[0],
                        focusNode: _usernameFocusNode,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorNormal[0]),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: _usernameFocusNode.hasFocus
                                ? colorDark[0]
                                : Colors.grey,
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextField(
                        onTap: () {
                          setState(() {});
                        },
                        cursorColor: colorNormal[0],
                        focusNode: _passFocusNode,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          hintStyle: TextStyle(color: colorNormal[0]),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorNormal[0]),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: _passFocusNode.hasFocus
                                ? colorDark[0]
                                : Colors.grey,
                          ),
                        ),
                      ),
                      const Gap(5),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: colorDark[0]),
                        ),
                      ),
                      const Gap(10),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              foregroundColor: colorDark[0],
                              backgroundColor: colorNormal[0]),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have Account?"),
                  const Gap(5),
                  Text(
                    "Register",
                    style: TextStyle(
                        color: colorDark[0], fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
