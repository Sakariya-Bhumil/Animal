import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
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
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40), // Your Logo
            const SizedBox(width: 10),
            const Text(
              'My App',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 134, 163, 176),
        actions: [
          _buildNavButton(context, 'Home', () {}),
          _buildNavButton(context, 'Workout', () {}),
          _buildNavButton(context, 'Revision', () {}),
          _buildNavButton(context, 'Blogs', () {}),
          _buildNavButton(context, 'Study Circle', () {}),
        ],
      ),

      drawer: CustomDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBanner(),
              SizedBox(height: 20),
              Text("Case Studies", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildCaseStudyCard(context),
              SizedBox(height: 20),
              
              SizedBox(height: 15),


          //     Expanded(
          //       child: LayoutBuilder(
          //         builder: (context, constraints) {
          //           int crossAxisCount = constraints.maxWidth > 700 ? 4 : 2;
          //           return GridView.builder(
          //             itemCount: workoutItems.length,
          //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //               crossAxisCount: crossAxisCount,
          //               childAspectRatio: 1.1
          //             ),
          //             itemBuilder: (context, index) {
          //               return _buildWorkoutCard(workoutItems[index]);
          // },
          //           );
          //         },
          //       ),
          
                
          //     ),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("Workout", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              _buildWorkoutSection(), // ✅ No scroll, fixed layout
            ],
          ),
          
          
              SizedBox(height: 20),
              Text("Flashcard", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildFlash(),
              SizedBox(height: 20),             
             _buildCard(context),
             SizedBox(height: 20),
             Text("Customise Workout", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
             SizedBox(height: 10),

              SizedBox(height: 20),
             _buildFullSyllabusCard(context),
              SizedBox(height: 10),
              _buildFullSyllabusCards(context),
              SizedBox(height: 20),
             
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      "Have suggestions?",
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey[500], // Light grey color
      ),
      textAlign: TextAlign.center,
    ),// Spacing between texts
    Text(
      "  Send Feedback",
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue, // Blue color
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ],
)

            ],
          ),
        ),
        
      ),
    );
  }

  /// 🟢 **Gradient Banner**
  Widget _buildBanner() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Simulate Success: Gauge Your Abilities with Our Full-Length Mock Tests!",
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }


  // flashcard
  Widget _buildFlash() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Practice Flashcards", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Available: 1,307", style: TextStyle(fontSize: 14, color: Colors.black54)),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    side: const BorderSide(color: Color.fromARGB(255, 103, 80, 163)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  ),
  icon: const Icon(Icons.lock, color: Color.fromARGB(255, 103, 80, 163), size: 18), // Lock icon added
  label: const Text(
    "Select Subjects",
    style: TextStyle(
      color: Color.fromARGB(255, 103, 80, 163),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
)

            ),
          ],
        ),
      ),
    );
  }

  /// 📌 **Case Study Card**
  Widget _buildCaseStudyCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Practice Case Studies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Unlocked: 1", style: TextStyle(fontSize: 14, color: Colors.black54)),
            Text("Available: 6", style: TextStyle(fontSize: 14, color: Colors.black54)),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Color.fromARGB(255,103, 80, 163)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text("Select Case Studies", style: TextStyle(color: Color.fromARGB(255,103, 80, 163), fontSize: 14, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
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




  /// **🔹 Navigation Button**
  Widget _buildNavButton(BuildContext context, String title, VoidCallback onTap) {
    return TextButton(
      onPressed: onTap,
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}


/// **Custom Drawer**
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/user.png'), // Your Profile Image
                ),
                SizedBox(height: 10),
                Text("Sangeeta Gupta", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.purple, size: 16),
                    SizedBox(width: 5),
                    Text("147 Days To Exam", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
          _buildDrawerItem(Icons.lock, "Go Premium", () {}),
          _buildDrawerItem(Icons.menu_book, "Workout", () {}, selected: true),
          _buildDrawerItem(Icons.assignment, "Revision", () {}),
          _buildDrawerItem(Icons.article, "Blogs", () {}),
          _buildDrawerItem(Icons.groups, "Study Circle", () {}),
          Divider(),
          _buildDrawerItem(Icons.message, "Contact Us", () {}),
          _buildDrawerItem(Icons.share, "Invite & Get Premium", () {}),
          _buildDrawerItem(Icons.nightlight_round, "Night Mode", () {}),
          _buildDrawerItem(Icons.privacy_tip, "Privacy Policy", () {}),
          _buildDrawerItem(Icons.exit_to_app, "Log off", () {}),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap, {bool selected = false}) {
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.purple : Colors.black54),
      title: Text(title, style: TextStyle(color: selected ? Colors.purple : Colors.black)),
      tileColor: selected ? Colors.purple.shade50 : Colors.transparent,
      onTap: onTap,
    );
  }
}




  Widget _buildCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 16),
          _buildQuizContent(context),
        ],
      ),
    );
  }

  /// Builds the header with title & "Show All" button
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Daily Test Series",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Show All",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  /// Builds the main content with badge, text, and button
  Widget _buildQuizContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildDateBadge(),
        SizedBox(width: 12),
        _buildQuizDetails(),
        _buildStartButton(),
      ],
    );
  }

  /// Builds the date badge
  Widget _buildDateBadge() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            "NOW",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
          Text(
            "03 OCT",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  /// Builds the quiz title, description, and end-time text
  Widget _buildQuizDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CFP® Exam Prep Rapid Quiz",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            "10 Qs, 15 mins",
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 4),
          Text(
            "Ends in 1 day",
            style: TextStyle(color: Colors.grey[500], fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  /// Builds the "Start" button
  Widget _buildStartButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(
        "Start",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }




//Customise workout widget section



Widget _buildFullSyllabusCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {
          print("Card Clicked");
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Side: Title & Description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Syllabus Practice",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Not yet attempted: 3543\nTotal Questions: 3543",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                  ],
                ),
              ),
              // Right Side: Arrow Icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
            ],
          ),
        ),
      ),
    );
  
}



Widget _buildFullSyllabusCards(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {
          print("Card Clicked");
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Side: Title & Description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Syllabus Practice",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Not yet attempted: 3543\nTotal Questions: 3543",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                  ],
                ),
              ),
              // Right Side: Arrow Icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
            ],
          ),
        ),
      ),
    );
  
}