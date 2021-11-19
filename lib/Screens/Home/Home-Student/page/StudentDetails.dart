import 'package:flutter/material.dart';

class StudentDetailsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Student Details'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    
    body: SingleChildScrollView(
      child:  Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Image(image: AssetImage('assets/icons/AppLogo.png')),
                    title: Text('Hello Bibek', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('Please keep your data up to date. The placement team will preasent your information that you record in this app. So that you can get good packages in wonderful companies.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ],
              ),        
            ),

            Card(
              color: Color.fromRGBO(128, 128, 128, 1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Enter Your Peronal Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                ],
              ),        
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your father name.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Father's Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Date of Birth.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_today),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Date of Birth",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Permanent Address.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.place),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Permanent Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            Card(
              color: Color.fromRGBO(128, 128, 128, 1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Enter Your Qualification Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                ],
              ),        
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your GPA.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.grade),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "GPA in 10",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your GPA.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.grade),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "GPA in 10+2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            const SizedBox(height: 12),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your GPA.';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.grade),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "GPA in University",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState.validate()) {
                    
                  }
                  else {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                      );
                  }
                },
                child: const Text('Submit'),
              ),
            ),


          ],
        ),
      ),
    ),
  );
}
