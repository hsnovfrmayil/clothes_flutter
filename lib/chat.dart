import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 35,
          ),
        ),
        title: const Text(
          "Messages",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 35,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                    // border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    labelText: "Search a Who",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Active Now",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
