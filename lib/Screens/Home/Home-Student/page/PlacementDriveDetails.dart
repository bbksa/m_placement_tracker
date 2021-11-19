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
                    subtitle: Text('Placement of students is given a lot of importance at MMDU. We make it easy for them to identify their most ideal spot in their preferred industry. Our placement cell is their first stop. Here is where all the campus placements are carried on so their career gets the right direction. We with our exceptionally talented faculty and practical trainers make sure that each and every student knows their worth in terms of professional skills and practical knowledge. Employers have moved beyond the degree. They now pay more attention to the ability of young minds to cope up with real time challenges in actual business scenarios and applications.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ],
              ),        
            ),

            const SizedBox(height: 8),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('Infosys', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('Infosys Placement Drive at MMDU, Mullana.'+'\n'+'Location: Delhi/Pune/Mumbai', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('22-Nov-2021'),
                      const SizedBox(width: 8),
                      Text('11:00 AM'),
                      const SizedBox(width: 75),
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

            const SizedBox(height: 8),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('TCS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('TCS Placement Drive at MMDU, Mullana.'+'\n'+'Location: Delhi/Hydrabad/Mumbai', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('23-Nov-2021'),
                      const SizedBox(width: 8),
                      Text('14:00 PM'),
                      const SizedBox(width: 75),
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

            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: new Center(
                  child: Column(
                    children: <Widget>[
                      Text('No. of Companies visited', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      const SizedBox(height: 12),
                      Table(  
                        defaultColumnWidth: FixedColumnWidth(140.0),  
                        border: TableBorder.all(  
                          color: Colors.black12,  
                          style: BorderStyle.none,  
                          width: 0
                        ),  
                        children: [  
                          TableRow( children: [  
                            Column(children:[Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)]), 
                            Column(children:[Text('Company Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))]),  
                            Column(children:[Text('Date', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))]),  
                          ]),
                          TableRow( children: [
                            Column(children:[Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('TCS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('22-10-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                          ]), 
                          TableRow( children: [
                            Column(children:[Text('2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Microsoft', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('27-10-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                          ]),
                          TableRow( children: [
                            Column(children:[Text('3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Google', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('07-11-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                          ]), 
                          TableRow( children: [
                            Column(children:[Text('4', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Tesla', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('12-11-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                          ]),  
                        ],  
                      ), 
                    ],
                  ),
                )
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
