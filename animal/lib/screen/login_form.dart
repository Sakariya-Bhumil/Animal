import 'package:flutter/material.dart';

class MentorSignupPage extends StatelessWidget {
  const MentorSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255,26, 59, 73),
        
        child: Center(
          
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255,35, 77, 90),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Are you a CFP® Professional? Become a Mentor, Shape the Future!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Join our mentorship program to inspire and guide the next generation of financial planners. Share your knowledge, expand your network, and give back to the profession you love.',
                    style: TextStyle(color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  _buildBulletPoint('Empower Future Leaders: Help aspiring CFP® professionals navigate their career paths.'),
                  _buildBulletPoint('Grow Professionally: Gain new perspectives while sharing your own.'),
                  _buildBulletPoint('Flexible Commitment: Mentor virtually, in person, or both.'),
                  const SizedBox(height: 20),
                  const Text(
                    'Ready to make an impact? Become a mentor today!',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Text("Your Full Name",style: TextStyle(color: Colors.white),),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Your Full Name: ",style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(label: 'Your Full Name'),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Email: ",style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(label: 'Email'),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 178, 217, 219),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.lightBlueAccent, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label}) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white38),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white10,
      ),
    );
  }
}
