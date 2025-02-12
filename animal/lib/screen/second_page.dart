import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 80), // Add your logo path
            const SizedBox(width: 10),
            const Text('My App',style: TextStyle(color: Colors.white,fontSize: 18),),
          ],
        ),
        backgroundColor: const Color.fromRGBO(20, 46, 57, 1),
        
        
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to Home Page
            },
            child: const Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to About Page
            },
            child: const Text('Workout', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Admin Page
            },
            child: const Text('Revision', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Course Page
            },
            child: const Text('Blogs', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Course Page
            },
            child: const Text('Study Circle', style: TextStyle(color: Colors.white)),
          ),
        ],
        
      ),
      body: Row(
        children: [
          // Sidebar
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserProfileSection(),
                  SidebarMenu(),
                ],
              ),
            ),
          ),
          // Main Content
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderSection(),
                  WorkoutCategories(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundColor: Colors.grey),
          SizedBox(height: 10),
          Text("Sangeeta Gupta", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("147 Days To Exam", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class SidebarMenu extends StatelessWidget {
  final List<String> menuItems = ["Go Premium", "Workout", "Revision", "Blogs", "Study Circle"];

  SidebarMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: menuItems
          .map((item) => ListTile(
                title: Text(item),
                leading: const Icon(Icons.circle),
                onTap: () {},
              ))
          .toList(),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,
        end: Alignment.topRight,colors: [Colors.green,Colors.blue]),
        // color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Simulate Success: Gauge Your Abilities with Our Full-Length Mock Tests!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class WorkoutCategories extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"title": "Psychology of Financial Planning", "icon": Icons.account_balance_wallet},
    {"title": "Estate Planning", "icon": Icons.house},
    {"title": "Retirement Savings and Income Planning", "icon": Icons.savings},
    {"title": "Tax Planning", "icon": Icons.receipt_long},
    {"title": "Investment Planning", "icon": Icons.trending_up},
    {"title": "Risk Management and Insurance Planning", "icon": Icons.security},
    {"title": "General Principles of Financial Planning", "icon": Icons.description},
    {"title": "Professional Conduct and Regulation", "icon": Icons.rule},
  ];

  WorkoutCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 800 ? 4 : 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(categories[index]['icon'], size: 40, color: Colors.blue),
              const SizedBox(height: 10),
              Text(categories[index]['title'], textAlign: TextAlign.center),
            ],
          ),
        );
      },
    );
  }
}