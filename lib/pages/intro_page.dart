import 'package:coffee_shop/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Image.asset("lib/images/coffee.png"),
            Text("Brew Day", style: TextStyle(color: Colors.brown, fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text("How do you like your coffee?"),
            SizedBox(height: 15),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text("Enter shop", style: TextStyle(color: Colors.white),)),
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
            )
          ],
        ),
      ),
    );
  }
}