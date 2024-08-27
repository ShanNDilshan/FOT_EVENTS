import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.20),
          child: Image.asset('assets/logos/fotevents.jpg'),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
              "We are 3rd Year Innovative Young Individuals, who are eager to make a difference So, We Introduce FOT EVENTS, a event tracking app for Faculty Of Technology, University Of Sri Jayewardanapura"),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Contact Us\n\nEmail - fotevents@gmail.com"),
        )
      ],
    );
  }
}
