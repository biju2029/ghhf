import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController heightcont = TextEditingController();
  TextEditingController weightcont = TextEditingController();
  String result = "";
  void san() {
    double H = double.parse(heightcont.text);
    double W = double.parse(weightcont.text);
    double bmi = W / (H / 100 * H / 100);
    setState(() {
      result = "your bmi is ${bmi.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown, const Color.fromARGB(31, 133, 210, 16)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 115),
            Text("BMI CALCULATOR", style: TextStyle(fontSize: 50)),
            SizedBox(height: 50),
            SizedBox(
              height: 350,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: const Color.fromRGBO(235, 230, 230, 0.821),
                  child: Column(
                    children: [
                      TextField(
                        controller: heightcont,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.height),
                          fillColor: (const Color.fromARGB(143, 144, 140, 140)),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          labelText: "Height",
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: weightcont,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.monitor_weight),
                          fillColor: const Color.fromARGB(255, 157, 156, 153),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          labelText: "weight",
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          san();
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 75, 69, 67),
                                const Color.fromARGB(255, 224, 220, 215),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Calculate",
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(result),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
