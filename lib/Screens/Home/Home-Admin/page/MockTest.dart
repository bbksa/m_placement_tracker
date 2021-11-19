import 'package:flutter/material.dart';

class MockTestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Mock Test Series'),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),

        body: Material(
          color: Colors.brown.shade300,
            child: ListView(
              children: <Widget>[
                Card(
                  color: Colors.amber.shade200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.text_snippet_outlined),
                        title: Text('Practice Question - 2021', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Aptitude, Placement Interview, Problem Solving.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('View',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () { /* ... */ },
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('Attempt',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () { /* ... */ },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),        
                ),

                Card(
                  color: Colors.amber.shade200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.question_answer),
                        title: Text('Sample Question-1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Question asked by Infosys in 2020.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('View',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () { /* ... */ },
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('Attempt',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            onPressed: () { /* ... */ },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),        
                ),

                const SizedBox(height: 10),
                Container(
                  color: Colors.transparent,
                  child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: new Center(
                      child: Column(
                        children: <Widget>[
                          Text('Set Question', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter test name.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.question_answer),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Test Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter test description.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.details),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Description",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),

                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter test Date.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_view_day),
                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              hintText: "Date",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ),
                          
                          const SizedBox(height: 12),
                          Card(
                            child: new InkWell(
                              onTap: () {
                              },
                              child: Container(
                                width: 250.0,
                                height: 50.0,
                                child: ListTile(
                                  leading: Icon(Icons.upload),
                                  title: Text('Select Question', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                ),                              
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Update'),
                          ),
                        ],
                      ),
                    )
                  ),
                ),

              ],
            ),
          ),
      );
}
