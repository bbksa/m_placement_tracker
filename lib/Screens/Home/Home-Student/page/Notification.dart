import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),

        body: Material(
          color: Colors.black45,
            child: ListView(
              children: <Widget>[
                Card(
                  color: Colors.white60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.my_library_books_sharp),
                        title: Text('Mock Test is schedule', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Aptitude, Placement Interview, Problem Solving.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      
                      ),
                    ],
                  ),        
                ),

                Card(
                  color: Colors.white60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.select_all_rounded),
                        title: Text('Selected for Interview Round', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Placement Drive MMU.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                    ],
                  ),        
                ),

                Card(
                  color: Colors.white60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.app_registration_rounded),
                        title: Text('TCS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Registration is open till 20th December', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                    ],
                  ),        
                ),

                Card(
                  color: Colors.white60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.upload_file),
                        title: Text('Placement Drive Team', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Update your details carefully.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                    ],
                  ),        
                ),

              ],
            ),
          ),

      );

  widget({Icon child}) {}
}
