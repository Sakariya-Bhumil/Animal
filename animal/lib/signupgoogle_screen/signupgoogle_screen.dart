import 'package:flutter/material.dart';

class signupgoogle_screen extends StatefulWidget {
  const signupgoogle_screen({super.key});

  @override
  State<signupgoogle_screen> createState() => _signupgoogle_screenState();
}

class _signupgoogle_screenState extends State<signupgoogle_screen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: 
      Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(padding: EdgeInsets.all(16.23),),
                  Row(
                    children: [
                      SizedBox(height: 10,
                      width: 40,),
                      Text("New Registration" ,style: TextStyle(fontSize: 40,),),
                        
                    ],
                  ),
                          SizedBox(height: 20,),
                          Column   (
                            
                            children: [
                             
                              Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(labelText: 'First Name'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                        
                              SizedBox(height: 20,),
                        
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Last Name'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your last name';
                                  }
                                  return null;
                                },
                              ),
                        
                              SizedBox(height: 20,),
                        
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Email'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                        
                              SizedBox(height: 20,),
                        
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Mobile Number'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your mobile number';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20,),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Process data
                                  }
                                },
                                child: Text('Submit'),
                              ),
                            ],
                          ),
                        ),
                    ],
                  )
                ]
                        
                        
              ),
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 143, 223, 184),
              borderRadius: BorderRadius.circular(20),
              
            ),
            height: 600,
            width: 400,
          ),
        ),
      ),
    );
  }
}