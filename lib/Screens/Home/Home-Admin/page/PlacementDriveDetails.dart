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
      padding: EdgeInsets.all(10.0),
      child:  Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Card(
              color: Color(Colors.red.shade50.value),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Image(image: AssetImage('assets/icons/AppLogo.png')),
                    title: Text('MMU Placement Drive Team', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text('Placement of students is given a lot of importance at MMDU. We make it easy for them to identify their most ideal spot in their preferred industry. Our placement cell is their first stop. Here is where all the campus placements are carried on so their career gets the right direction. We with our exceptionally talented faculty and practical trainers make sure that each and every student knows their worth in terms of professional skills and practical knowledge. Employers have moved beyond the degree. They now pay more attention to the ability of young minds to cope up with real time challenges in actual business scenarios and applications.'
                    , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ],
              ),        
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              color: Colors.transparent,
              child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: Column(
                    children: <Widget>[
                      Text('Create Event', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                      const SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter event name.';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.event),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Event Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ),

                      const SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter event location.';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Date",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ),

                      const SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter event Date.';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_clock_rounded),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Time",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ),

                      const SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter event location.';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.room),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Location",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ),

                      const SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter event details.';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.details),
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Event Details",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ),
                      
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                              );
                          }
                        },
                        child: const Text('Submit'),
                      ),

                    ],
                  ),
                )
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
                      const SizedBox(height: 12),
                      Text('No. of Companies visited', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(height: 12),
                      Table(  
                        defaultColumnWidth: FixedColumnWidth(110.0),  
                        border: TableBorder.all(  
                          color: Colors.black12,  
                          style: BorderStyle.solid,  
                          width: 1
                        ),  
                        children: [  
                          TableRow( children: [  
                            Column(children:[Text('S.No.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)]), 
                            Column(children:[Text('Company Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Date', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Remove', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))])  
                          ]),
                          TableRow( children: [
                            Column(children:[Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('TCS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('22-10-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
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
                            Column(children:[Text('Microsoft', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('27-10-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                            Column(children:[TextButton(
                                              style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                              ),
                                              onPressed: () { },
                                              child: Icon(Icons.delete, color: Colors.red),
                            )])
                          ]),
                          TableRow( children: [
                            Column(children:[Text('3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Google', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('07-11-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
                            Column(children:[TextButton(
                                              style: ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                              ),
                                              onPressed: () { },
                                              child: Icon(Icons.delete, color: Colors.red),
                            )])
                          ]), 
                          TableRow( children: [
                            Column(children:[Text('4', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),  
                            Column(children:[Text('Tesla', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]),
                            Column(children:[Text('12-11-2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]), 
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
                      Center(
                        child: Row(
                          children: <Widget>[
                            const SizedBox(height: 12, width: 100),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add'),
                            ),
                            const SizedBox(height: 12, width: 100),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Edit'),
                            ),
                          ],
                        ), 
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
