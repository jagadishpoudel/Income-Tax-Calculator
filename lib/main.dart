import 'package:flutter/material.dart';
import 'package:income_tax_calculator_nepal/function.dart';

String title = "Income tax Calculator Nepal";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double amount = 0;
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Your Salary", style: TextStyle(
              fontSize: 16,
               fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(),
                borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                onChanged: (value) {
                  amount = double.parse(value);
                },
                decoration: const InputDecoration(
                  // label: Text("Your salary"),
                  hintText: "Your salary",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: (){
                setState(() {
                  double tax = taxCalculator(amount);
                  result = "Your tax is\n$tax";
                });
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Calculate"),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: Text(
                "$result.", textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}