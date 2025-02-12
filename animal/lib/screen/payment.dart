import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 373,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                       Text(
                         "Unlock CFP® Exam Prep Premium",
                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                       ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Unlimited access to 3,500+ subject-wise CFP® Exam Prep Questions",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Select multiple subjects while practicing",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Create unlimited practice tests that can be customized by subjects, questions, and time",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Breakthrough analytics to accurately pinpoint your mistakes",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Reinforce concepts by revising previous mistakes and bookmarked questions",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Priority email support 7 days a week",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Select Plans Clicked!");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(99, 79, 155, 1),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Select plans",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
            
                //second container
            
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                       Text(
                         "Start Case Studies Plan",
                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                       ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "CFP® Exam Prep Mock Tests designed as per latest pattern",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Access to all the case studies",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Full access to all CFP Premium features",
                                style: TextStyle(fontSize: 16,color: Color.fromRGBO(133, 133, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Select Plans Clicked!");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(99, 79, 155, 1), 
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Upgrade to Case Studies",
                              style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1), ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                // third container
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 1060,
                  width: double.infinity,
                 decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text("Membership Benefits",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                        ]
                      ),
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.topLeft,
                         child: Column(
                        children: [
                          Text("You will get access to premium listed below. We will continue to add more features and benefits for subsciber",style: TextStyle(fontSize: 20,))
                        ]
                      ),
                      ),
                      Container(
                        
                        height: 950,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
            children: [
              buildTableRow("", "Free", "Premium", "Case Studies", isHeader: true,highlightColor: Color.fromARGB(255, 169,189, 196)),
              buildTableRow("Practice", "", "", "",isHighlighted: true),
              buildTableRow("Number of CFP® Exam Prep questions available", "100", "3,500+", "3,500+"),
              buildTableRow("Full syllabus practice", "✔", "✔", "✔"),
              buildTableRow("Rapid Quiz", "✔", "✔", "✔"),
              buildTableRow("CFP® Exam Prep Mock Tests", "", "✔", "✔"),
              buildTableRow("Analytics", "", "", "",isHighlighted: true),
              buildTableRow("Subject-level accuracy", "✔", "✔", "✔"),
              buildTableRow("PrepDNA with topic -level analysis of strength and weeknesses\n(Coming Soon)", "", "✔", "✔"),
              buildTableRow("Revision", "", "", "",isHighlighted: true),
              buildTableRow("Revise mistakes from last 3 days", "✔", "✔", "✔"),
              buildTableRow("Revision with all mistakes\nBookmark revision", "", "✔", "✔"),
              // buildTableRow("Bookmark revision", "", "✔", "✔"),
              buildTableRow("Case Studies", "", "", "",isHighlighted: true),
              buildTableRow("Access to all case studies", "", "", "✔"),
            ],
          ),
                      )
                     
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
 Widget buildTableRow(String feature, String free, String premium, String caseStudies, {bool isHeader = false, bool isHighlighted = false,Color highlightColor = const Color.fromARGB(255,209,216, 218)}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        color: isHeader || isHighlighted ? const Color.fromARGB(255,209,216, 218) : Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        children: [
          buildCell(feature, flex: 3, isHeader: isHeader, alignLeft: true),
          buildCell(free, flex: 2, isHeader: isHeader, isRed: free == "100"),
          buildCell(premium, flex: 2, isHeader: isHeader),
          buildCell(caseStudies, flex: 2, isHeader: isHeader),
        ],
      ),
    );
  }

  Widget buildCell(String text, {int flex = 1, bool isHeader = false, bool isRed = false, bool alignLeft = false}) {
    return Expanded(
      flex: flex,
      child: Container(
        alignment: alignLeft ? Alignment.centerLeft : Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          text,
          textAlign: alignLeft ? TextAlign.start : TextAlign.center,
          style: TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            color: isRed ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }


  

