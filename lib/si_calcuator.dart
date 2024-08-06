// import 'package:flutter/material.dart';

// String title = "Simple Interest App";

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: title,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   double principle = 0;
//   double rate = 0;
//   double time = 0;
//   String SimpleInterest = '';

//   // Simple Interest
//   siResult() {
//     return (principle * rate * time) / 100;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//         title: Text(title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Principle",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20)),
//               padding: const EdgeInsets.only(left: 20),
//               child: TextFormField(
//                 onChanged: (value) {
//                   principle = double.parse(value);
//                 },
//                 decoration: const InputDecoration(
//                   hintText: "Principle",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             const Text(
//               "Time(yrs)",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20)),
//               padding: const EdgeInsets.only(left: 20),
//               child: TextFormField(
//                 onChanged: (value) {
//                   rate = double.parse(value);
//                 },
//                 decoration: const InputDecoration(
//                   // label: Text("Your salary"),
//                   hintText: "Time",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             const Text(
//               "Rate(%)",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20)),
//               padding: const EdgeInsets.only(left: 20),
//               child: TextFormField(
//                 onChanged: (value) {
//                   time = double.parse(value);
//                 },
//                 decoration: const InputDecoration(
//                   hintText: "Rate",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     double si = siResult();
//                     SimpleInterest = "Your SI Amount is\n$si";
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: const Text("Calculate"),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Center(
//               child: Text(
//                 "$SimpleInterest.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
