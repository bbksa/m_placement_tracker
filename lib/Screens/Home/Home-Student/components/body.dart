import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // This size provide us total height and width of our screen
    return Scaffold(
      body: Material(
        color: Color.fromRGBO(150, 30, 160, 1),
        child: ListView(
          children: <Widget>[

            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRTd2Z79dbDOTKR_9Mh5Ve1wCCTNxa1gZerH9ABgvi7hiHMZ5fQ"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://i2.wp.com/www.mmumullana.org/wp-content/uploads/2021/04/Placement-Drive-Noveau-Medicament.jpg?fit=1201%2C601&ssl=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://i1.wp.com/www.mmumullana.org/wp-content/uploads/2021/03/Campus-Placement-Drive.jpg?fit=1201%2C601&ssl=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://i2.wp.com/www.mmumullana.org/wp-content/uploads/2019/05/eminent_recruiters.jpg?fit=1350%2C670&ssl=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://blog.mmumullana.org/wp-content/uploads/2019/06/Blog-Creative-Placement-COMB.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              
              //Slider Container properties
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Row(children: [
                Container(
                  height: 140,
                  child: Card(
                    child: Column(children: [
                      Icon(Icons.person, size: 100, color: Colors.blue.shade400),
                      Text('Profile' + '\n' + '', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Container(
                  height: 140,
                  child: Card(
                    child: Column(children: [
                      Icon(Icons.update, size: 100, color: Colors.blue.shade400),
                      Text('Updates' + '\n' + '', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Container(
                  height: 140,
                  child: Card(
                    child: Column(children: [
                      Icon(Icons.work, size: 100, color: Colors.blue.shade400),
                      Text('Placement' + '\n' + '', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Container(
                  height: 140,
                  child: Card(
                    child: Column(children: [
                      Icon(Icons.question_answer, size: 100, color: Colors.blue.shade400),
                      Text('Test' + '\n' + '', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
              ]),
            ),

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
