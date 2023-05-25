import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  var num1 = 0, num2 = 0, ans;

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void Mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void Div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 / num2).toStringAsFixed(2);
    });
  }

  void clear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output: $ans",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromARGB(255, 36, 39, 188),
                    fontWeight: FontWeight.w500),
              ),
              Divider(
                height: 60.0,
              ),
              TextField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter First Number"),
              ),
              Divider(
                height: 10,
              ),
              TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Second Number"),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.greenAccent,
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () => add(),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () => sub(),
                  ),
                ],
              ),
              Divider(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.yellow,
                    child: Text(
                      "x",
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () => Mul(),
                  ),
                  MaterialButton(
                    color: Color.fromARGB(255, 7, 224, 7),
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () => Div(),
                  ),
                ],
              ),
              Divider(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.yellow,
                    child: Text(
                      "Clear",
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () => clear(),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
