import 'package:flutter/material.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/home_Admin_screen.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/page/MockTest.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/page/UpdateProfile.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/page/user_page.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/page/StudentDetails.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/page/PlacementDriveDetails.dart';
import 'package:m_placement_tracker/Screens/Welcome/welcome_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 5);
  @override
  Widget build(BuildContext context) {
    final name = 'MMDU';
    final email = 'admin@mmumullana.org';
    final urlImage =
        'https://scontent.fixc11-1.fna.fbcdn.net/v/t1.18169-9/14570457_1955836844643518_299138171556108047_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=DgasS4qJftwAX-ZbFWF&_nc_ht=scontent.fixc11-1.fna&oh=a91bd300a60fe10c0f25133eec4f179d&oe=61A24DC5';
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
                  name: 'MMDU',
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
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  NewWidget(
                      text: 'Log Out',
                      icon: Icons.logout,
                      onClicked: () => selectedItem(context, 5)),
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
          builder: (context) => HomeAdminScreen(),
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
