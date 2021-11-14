import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Material(
        color: Color.fromRGBO(128, 128, 128, 1),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Image(image: AssetImage('assets/icons/AppLogo.png')),
                    title: Text('Placement Department', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('More than 100 students are placed in 2021.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('More Details'),
                        onPressed: () { /* ... */ },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Apply'),
                        onPressed: () { /* ... */ },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),        
            ),

            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('Infosys', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('Infosys Placement Drive at MMDU, Mullana.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('More Details'),
                        onPressed: () { /* ... */ },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Apply'),
                        onPressed: () { /* ... */ },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),        
            ),

  
          ],
        ),
      ),
    );
  }
}
