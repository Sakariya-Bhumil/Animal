import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40), // Add your logo path
            SizedBox(width: 10),
            Text('My App',style: TextStyle(color: Colors.white),),
          ],
        ),
        backgroundColor: Color.fromRGBO(26, 59, 73, 1),
        
        
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to Home Page
            },
            child: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to About Page
            },
            child: Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Admin Page
            },
            child: Text('Admin', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Course Page
            },
            child: Text('Course', style: TextStyle(color: Colors.white)),
          ),
          
        ],
        
      ),









      body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical, // Enables vertical scrolling
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Search Bar
        TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),

        // Category Section
        Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [],
          ),
        ),
        SizedBox(height: 20),

        // Featured Section with Scrollable Containers
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Color.fromRGBO(26, 59, 73, 1),
                  padding: EdgeInsets.all(16),
                  height: 800,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connect with a CFP® Professional for Expert Financial Planning",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        // textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Work with a certified expert to achive your finacial goals.From retirement planning to invest strategies, we provide personalized advice tailored to your needs.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        // textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        // style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 218, 85, 151)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 218, 85, 151),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Adjust radius as needed
                            ),
                          ),
                        onPressed: () {
                        
                      }, child: Text("Book a free 30 min Consultation", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
                      ),
                      SizedBox(height: 60,),
                      Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          
                          image: DecorationImage(image: AssetImage("assets/finance.png",),fit: BoxFit.contain)),

                      ),

                      // Container(
                      //   width: 300,
                      //   height: 30,
                      //   child: Center(child: Text("Book a free 30 min Consultation",style: TextStyle(color: Colors.white, fontSize: 18),)),
                      //   decoration: BoxDecoration(
                      //     color: Color.fromRGBO(218, 85, 151,1),
                      //     borderRadius: BorderRadius.circular(10),
                      //   )
                      // )
                    ],
                  ),
                ),
              ),
              
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 800,
                color: Color.fromRGBO(26, 59, 73, 1),
                padding: EdgeInsets.all(16),
                child: Text(
                  "Connect with a CFP® Professional for Expert Financial Planning",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
)

    );
  }

  // Widget categoryCard(String title, IconData icon) {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 10),
  //     child: Card(
  //       color: Colors.blue[100],
  //       child: Padding(
  //         padding: const EdgeInsets.all(12.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Icon(icon, size: 30, color: Colors.blue),
  //             SizedBox(height: 5),
  //             Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget featuredItem(String title, String subtitle, IconData icon) {
  //   return Card(
  //     elevation: 2,
  //     child: ListTile(
  //       leading: Icon(icon, color: Colors.blue, size: 40),
  //       title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  //       subtitle: Text(subtitle),
  //       trailing: Icon(Icons.arrow_forward_ios, size: 16),
  //     ),
  //   );
  // }
}
