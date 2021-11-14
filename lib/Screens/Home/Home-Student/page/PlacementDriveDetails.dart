import 'package:flutter/material.dart';

class PlacementDriveDetailsPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Placement Drive Details'),
      centerTitle: true,
      backgroundColor: Colors.green,
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
                  return 'Please enter your name.';
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

          ],
        ),
      ),
    ),
  );
}
