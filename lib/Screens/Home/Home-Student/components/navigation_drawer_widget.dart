import 'package:flutter/material.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/home_Student_screen.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/MockTest.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/Notification.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/UpdateProfile.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/Updates.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/user_page.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/StudentDetails.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Student/page/PlacementDriveDetails.dart';
import 'package:m_placement_tracker/Screens/Welcome/welcome_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 5);
  @override
  Widget build(BuildContext context) {
    final name = 'Bibek Kr. Sah';
    final email = 'coolbibeksah@gmail.com';
    final urlImage =
        'https://i.pinimg.com/originals/cf/45/26/cf4526a4e238c1d853b5971230c2e84e.jpg';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: 'Bibek Kr. Sah',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  NewWidget(
                      text: 'Update Profile',
                      icon: Icons.details,
                      onClicked: () => selectedItem(context, 0)),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Dashboard',
                      icon: Icons.dashboard,
                      onClicked: () => selectedItem(context, 1)),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Placement Drive details',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 2)),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Student Details',
                      icon: Icons.school,
                      onClicked: () => selectedItem(context, 3)),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Mock Test Series',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 4)),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Updates',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 5)),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 16),
                  NewWidget(
                      text: 'Notifications',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 6)),
                  const SizedBox(height: 24),
                  NewWidget(
                      text: 'Log Out',
                      icon: Icons.logout,
                      onClicked: () => selectedItem(context, 7)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
    String name,
    String email,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UpdateProfilePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeStudentScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlacementDriveDetailsPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StudentDetailsPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MockTestPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UpdatesPage(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificationPage(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ));
        break;
    }
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.onClicked,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
