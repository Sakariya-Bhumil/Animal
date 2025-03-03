import 'package:flutter/material.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/estate.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/general.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/professional.dart';
// import 'package:my_app/screen/Home_Page.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/psycholog.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/retirement.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/risk.dart';
import 'package:my_app/screen/admin/inner_screen/case_study_page/tax.dart';


class AdminSecondPage extends StatelessWidget {
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
              SizedBox(height: 20),
              Text("Workout", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              _buildWorkoutSection(context), // ✅ Pass context
            ],
          ),
        ),
      ),
    );
  }

  /// 🔵 **Workout Card**
  Widget _buildWorkoutCard(BuildContext context, Map<String, dynamic> item) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: InkWell( // ✅ Makes the whole card clickable
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (_) => psycholog())); // ✅ Replace with correct page
          if (item["title"] == "Psychology of Financial Planning") {
            
            // Navigate to Psychology of Financial Planning Page
            Navigator.push(context, MaterialPageRoute(builder: (_) => psycholog()));
          } 
          else if(item["title"] == "Estate Planning"){
            // Navigate to Estate Planning Page
            Navigator.push(context, MaterialPageRoute(builder: (_) => estate()));
          }
          else if(item["title"] == "Retirement Savings and Income Planning"){
            // Navigate to Retirement Savings and Income Planning
            Navigator.push(context, MaterialPageRoute(builder: (_) => estate()));
          }
          else if(item["title"] == "Tax Planning"){
            // Navigate to Tax Planning
            Navigator.push(context, MaterialPageRoute(builder: (_) => retirement()));
          }
          else if(item["title"] == "Investment Planning"){
            // Navigate to Investment Planning
            Navigator.push(context, MaterialPageRoute(builder: (_) => tax()));
          }
          else if(item["title"] == "Risk Management and Insurance Planning"){
            // Navigate to Risk Management and Insurance Planning
            Navigator.push(context, MaterialPageRoute(builder: (_) => risk()));
          }
          
          else if(item["title"] == "General Principles of Financial Planning"){
            // Navigate to General Principles of Financial Planning
            Navigator.push(context, MaterialPageRoute(builder: (_) => general()));
          }
          else if(item["title"] == "Professional Conduct and Regulation"){
            // Navigate to Professional Conduct and Regulation
            Navigator.push(context, MaterialPageRoute(builder: (_) => professional()));
          }
          
          else {
            print("error");
          }
        },
        borderRadius: BorderRadius.circular(10), // ✅ Ripple effect
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
      ),
    );
  }

  /// 🔵 **Workout Section**
  Widget _buildWorkoutSection(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white.withOpacity(0),
            Colors.white,
            Colors.white,
            Colors.white.withOpacity(0),
          ],
          stops: [0.0, 0.1, 0.9, 1.0],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
          ),
          itemCount: workoutItems.length,
          itemBuilder: (context, index) => _buildWorkoutCard(context, workoutItems[index]), // ✅ Pass context
        ),
      ),
    );
  }
}
