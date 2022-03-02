import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  double heightt;
  double width;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool CheckBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: _AppBar(),
      body: _Body(),
    );
  }

  Widget _AppBar() {
    return AppBar(
      backgroundColor: Colors.red[600],
      title: _PrabhuImage(),
    );
  }

  Widget _Body() {
    OutlineInputBorder Bord = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    );
    return Center(
      child: Container(
        width: 350,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.transparent,
              width: 250,
              height: 40,
              child: Text(
                "Login to your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: 300,
              color: Colors.transparent,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  focusedBorder: Bord,
                  hintText: "Mobile Number",
                  fillColor: Colors.white,
                  enabledBorder: Bord,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  focusedBorder: Bord,
                  hintText: "Password",
                  fillColor: Colors.white,
                  enabledBorder: Bord,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 90, 10),
              height: 20,
              width: 240,
              color: Colors.transparent,
              child: Row(
                children: [
                  Checkbox(
                    value: CheckBoxValue,
                    onChanged: (value) {
                      setState(() {
                        CheckBoxValue = value;
                      });
                    },
                  ),
                  Text("Remember mobile number"),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 30,
                width: 300,
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _PrabhuImage() {
    return Row(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: SizedBox(
                width: 150,
                child: Image.network(
                    "https://www.prabhubank.com/assets/backend/uploads/logo.png"),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.camera_alt),
            SizedBox(width: 15),
            Icon(Icons.message),
          ],
        ),
      ],
    );
  }
}
