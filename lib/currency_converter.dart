import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State createState() => _ConvertState();
}

class _ConvertState extends State<CurrencyConverter> {
  double counter = 0;
  final TextEditingController textControlINR = TextEditingController();
  void _getINR() {
    setState(() {
      counter = double.parse(textControlINR.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(158, 30, 78, 161),
        elevation: 500,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white38,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(158, 30, 78, 161),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR $counter',
              style: const TextStyle(
                  fontSize: 58,
                  color: Color.fromARGB(255, 216, 216, 216),
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Color.fromRGBO(15, 32, 79, 1),
                        blurRadius: 3,
                        offset: Offset(2, 5))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  textAlign: TextAlign.center,
                  controller: textControlINR,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.monetization_on_outlined),
                      iconColor: Colors.black12,
                      label: Text("Enter the amount"),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(201, 60, 141, 153)),
                      hintText: "e.g, 5012",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(97, 234, 234, 234)),
                      filled: true,
                      fillColor: Colors.black45,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
            ),
            ElevatedButton(
                onPressed: _getINR,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 0, 194),
                    foregroundColor: Colors.white,
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    fontSize: 18, // Font size
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
