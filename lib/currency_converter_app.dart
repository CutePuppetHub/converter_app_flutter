// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ConverterAPP extends StatefulWidget {
  const ConverterAPP({super.key});
  @override
  State<ConverterAPP> createState() => _ConverterAPPState();
}

class _ConverterAPPState extends State<ConverterAPP> {
  double result = 0;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 108, 122, 137),
      appBar: AppBar(
        title: Text(
          "Currency Converter  ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 108, 122, 137),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "₹${result.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller,
                style: TextStyle(color: Colors.black),
                onSubmitted:
                    (value) => debugPrint(
                      "the value that is in the text field is $value",
                    ),
                // selectionWidthStyle: sel,
                decoration: InputDecoration(
                  hintText: "Enter the amount in INR",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(controller.text) * 85.6;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: Size(100, 50),
              ),

              child: Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
