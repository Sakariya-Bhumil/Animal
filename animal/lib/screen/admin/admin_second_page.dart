import 'package:flutter/material.dart';

class admin_second_page extends StatelessWidget {
  final List<Map<String, dynamic>> workoutItems = [
    {"icon": "assets/psycholog.png", "title": "Psychology of Financial Planning", "color": Colors.blue},
    {"icon": "assets/estate.png", "title": "Estate Planning", "color": Colors.purple},
    {"icon": "assets/retirement.png", "title": "Retirement Savings and Income Planning", "color": Colors.yellow},
    {"icon": "assets/tax.png", "title": "Tax Planning", "color": Colors.orange},
    {"icon": "assets/investment.png", "title": "Investment Planning", "color": Colors.pink},
    {"icon": "assets/risk.png", "title": "Risk Management and Insurance Planning", "color": Colors.green},
    {"icon": "assets/general.png", "title": "General Principles of Financial Planning", "color": Colors.red},
    {"icon": "assets/professional.png", "title": "Professional Conduct and Regulation", "color": Colors.amber},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("Workout", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              _buildWorkoutSection(), // ✅ No scroll, fixed layout
            ],
          ),
            ],
          ),
        ),
        
      ),
    );
  }

  


  /// 🔵 **Workout Card**
  Widget _buildWorkoutCard(Map<String, dynamic> item) {
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          CircleAvatar(
            radius: 30,
            backgroundColor: item["color"].withOpacity(0.2),
            child: Image.asset(item["icon"], height: 40),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              item["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }


Widget _buildWorkoutSection() {
  return Stack(
    children: [
      // Fading effect using ShaderMask
      ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white.withOpacity(0), // Left fade
              Colors.white, // Center visible area
              Colors.white, // Center visible area
              Colors.white.withOpacity(0), // Right fade
            ],
            stops: [0.0, 0.1, 0.9, 1.0], // Control fade areas
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstIn, // Ensures only the desired area is visible
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50), // Fading effect width
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Adjust based on screen size
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.5, // Adjust to make boxes smaller
            ),
            itemCount: workoutItems.length,
            itemBuilder: (context, index) => _buildWorkoutCard(workoutItems[index]),
          ),
        ),
      ),
    ],
  );
}
}