import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _myBox = Hive.box("testBox");
  void writeData() {
    _myBox.put("Name", "Muavia");

    _myBox.put("SecondName", "Asghar");
    print(_myBox.get("Name"));

    print(_myBox.get("SecondName"));
  }

  void readData() {
    _myBox.get("SecondName");
    print(_myBox.get("Name"));
    print(_myBox.get("SecondName"));
  }

  void deleteData() {
    _myBox.delete("Name");

    _myBox.delete("SecondName");
    print(_myBox.get("Name"));
    print(_myBox.get("SecondName"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive DB"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.green,
              onPressed: writeData,
              child: const Text(
                "Write",
              ),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue,
              child: const Text(
                "Read",
              ),
            ),
            MaterialButton(
                onPressed: deleteData,
                color: Colors.red,
                child: const Text(
                  "Delete",
                )),
          ],
        ),
      ),
    );
  }
}
