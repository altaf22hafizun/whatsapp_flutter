import 'package:flutter/material.dart';
import 'package:whatsapp_clone/page/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset("images/whatsapp.png", width: 200),
            Container(
              padding: EdgeInsets.only(top: 250),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("form", textAlign: TextAlign.center),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30, // Lebar gambar
                        height: 30, // Tinggi gambar
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/metas.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle, // Bentuk lingkaran
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Meta",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
