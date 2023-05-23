import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200, // Genişletilmiş yükseklik değeri
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://static.boredpanda.com/blog/wp-content/uploads/2016/01/woman-beauty-atlas-mihaela-noroc-156__880.jpg', // Arka plan resminin yolunu belirtin
                fit: BoxFit.cover, // Resmin uyumunu ayarlayın
              ),
            ),
            title: Column(
              children: [
                Text("Log Into Your"),
                Text("Account"),
              ],
            ),
          ),
          TextAdapter(text: "Email or Phone Number"),
          AdapterMethod(text: "Emailinizi daxil edin", answer: false),
          TextAdapter(text: "Password"),
          AdapterMethod(text: "Parolanızı girin", answer: true),
          TextAdapter(text: " Forget Password?"),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, top: 30, right: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.only(left: 30, top: 30, right: 20),
                child: 
          ),
        ],
      ),
    );
  }
}

class AdapterMethod extends StatelessWidget {
  String text;
  bool answer;
  AdapterMethod({
    required this.text,
    required this.answer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: TextField(
          obscureText: answer,
          obscuringCharacter: '*',
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: text),
        ),
      ),
    );
  }
}

class TextAdapter extends StatelessWidget {
  String text;
  TextAdapter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
