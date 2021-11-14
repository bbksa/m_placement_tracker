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

                Card(
                  color: Colors.amber.shade200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.question_answer),
                        title: Text('Sample Question-2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Question asked by TCS in 2020.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                        title: Text('Sample Question-3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        subtitle: Text('Question asked by NecLife in 2020.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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

              ],
            ),
          ),

      );
}
