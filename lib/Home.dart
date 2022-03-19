import 'package:crack_captcha/Admin/AdminHome.dart';
import 'package:crack_captcha/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kprimaryDarkColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: height,
              width: width,
              color: kprimaryLightColor,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                      GridItem(
                        width: width,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                width: 90,
                height: 50,
                decoration: BoxDecoration(
                color: kprimaryDarkColor,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:   const [
                      Icon(Icons.camera_alt,
                    color: Colors.white,
                    ),
                     VerticalDivider(
                       thickness: 1,
                       color: Colors.white,
                     ),
                      Icon(Icons.photo,
                    color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
