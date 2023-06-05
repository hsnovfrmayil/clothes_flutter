import 'package:clothes_flutter/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              "https://images.pexels.com/photos/2272853/pexels-photo-2272853.jpeg?cs=srgb&dl=pexels-yuri-manei-2272853.jpg&fm=jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 20,
            top: 70,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const LoginPage())));
              },
              child: Row(
                children: const [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Ideal Store For Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 200,
            child: TextButton(
              onPressed: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              }),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2, color: Colors.white),
                ),
                child: const Text(
                  "Sign in With Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 110,
              left: 20,
              right: 20,
              height: MediaQuery.of(context).size.height / 13,
              child: ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  }),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Arka plan rengi olarak kırmızıyı ayarla
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Continue with Facebook",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
