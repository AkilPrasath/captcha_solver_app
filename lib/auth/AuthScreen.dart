import 'package:crack_captcha/Home.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:crack_captcha/constants/colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController usernameController = TextEditingController();
  ScrollController scrollController = ScrollController();

  late double width, height;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kprimaryLightColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          controller: scrollController,
          child: Container(
            padding: const EdgeInsets.all(25),
            width: width,
            alignment: Alignment.topCenter,
            color: kprimaryLightColor,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 45,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/images/login_mobile.png",
                    height: height * 0.45,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  color: kprimaryDarkColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
