import 'package:flutter/material.dart';
import 'package:fot_eventsx/orgpage.dart';
import 'package:fot_eventsx/userdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final user = users[0];
  void _pageTranfer() {
    if (_emailController.text != "" && _passwordController.text != "") {
      if (_emailController.text == user.userName &&
          _passwordController.text == user.passWord) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OrganizationPage()),
        );
      } else {
        _emailController.text == "Please Enter Currect Credentials";
        _passwordController.text == "";
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("FOT-EVENTS LOGIN"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Center(child: Text("Please Enter your Account details")),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(20.20),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.20),
            child: TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              fixedSize: const Size(200, 50),
            ),
            onPressed: _pageTranfer,
            child: const Text(
              'Login',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
