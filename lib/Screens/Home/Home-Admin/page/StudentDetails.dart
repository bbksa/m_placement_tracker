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

            Container(  
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),  
              child: Table(  
                defaultColumnWidth: FixedColumnWidth(85.0),  
                border: TableBorder.all(  
                  color: Colors.black12,  
                  style: BorderStyle.solid,  
                  width: 0
                ),  
                children: [  
                  TableRow( children: [  
                    Column(children:[Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                    Column(children:[Text('Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:[Text('Course', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:[Text('Resume', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:[Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:[Text('Delete', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])  
                  ]),
                  TableRow( children: [
                    Column(children:[Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:[Text('Bibek Sah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:[Text('B. Tech SD', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Text('Resume', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    )]),
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    )]),
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Icon(Icons.delete, color: Colors.red),
                    )])
                  ]), 
                  TableRow( children: [
                    Column(children:[Text('2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                    Column(children:[Text('Raju Sah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                    Column(children:[Text('B. Tech SD', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Text('Resume', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    )]),
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    )]),
                    Column(children:[TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                      onPressed: () { },
                                      child: Icon(Icons.delete, color: Colors.red),
                    )])
                  ]),  
                ],  
              ),  
            ), 
          ],
        ),
      ),
    ),
  );
}
