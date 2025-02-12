import 'package:flutter/material.dart';



class finals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PricingScreen(),
    );
  }
}

class PricingScreen extends StatefulWidget {
  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  final List<Map<String, String>> plans = [
    {"title": "2 Week Exam Cram", "price": "\$49"},
    {"title": "1 Month Exam Drills", "price": "\$99"},
    {"title": "2 Months Exam Drills", "price": "\$199 (Save 10%)"},
    {"title": "3 Months Focused Practice", "price": "\$250 (Save 15%)"},
    {"title": "5 Months Strategic Practice", "price": "\$350 (Save 25%)"},
    {"title": "6 Months Ultimate Prep", "price": "\$400 (Save 30%)"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Premium Plans")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              width: constraints.maxWidth > 600 ? 500 : constraints.maxWidth * 0.9,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Choose a Plan", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  ...plans.map((plan) => buildPlanTile(plan["title"]!, plan["price"]!)).toList(),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Proceed to Payment"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPlanTile(String title, String price) {
    return Card(
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(price, style: TextStyle(color: Colors.green)),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text("Select"),
        ),
      ),
    );
  }
}
