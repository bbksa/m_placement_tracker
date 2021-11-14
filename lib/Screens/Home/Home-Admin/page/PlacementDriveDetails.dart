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

            // Column(children: [
            //   Row(children: [
            //     Text('Row 1' ),
            //     Spacer(),
            //     Icon(Icons.account_box),
            //   ]),
            //   Row(children: [
            //     Padding(
            //         padding: EdgeInsets.all(16.0),
            //         child: Column(children: [
            //           Text("Data 1 Title"),
            //           Text("Data 1.1"),
            //           Text("Data 1.2"),
            //         ])),
            //     Padding(
            //         padding: EdgeInsets.all(16.0),
            //         child: Column(children: [
            //           Text("Data 2 Title"),
            //           Text("Data 2.1"),
            //           Text("Data 2.2"),
            //         ])),
            //     Padding(
            //         padding: EdgeInsets.all(16.0),
            //         child: Column(children: [
            //           Text("Data 3 Title"),
            //           Text("Data 3.1"),
            //           Text("Data 3.2"),
            //         ])),
            //     Padding(
            //         padding: EdgeInsets.all(16.0),
            //         child: Column(children: [
            //           Text("Data 4 Title"),
            //           Text("Data 4.1"),
            //           Text("Data 4.2"),
            //         ])),
            //   ]),
            // ]),

            Container(
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
          ],
        ),
      ),
    ),
  );
}
