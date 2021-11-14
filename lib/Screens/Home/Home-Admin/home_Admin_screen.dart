import 'package:flutter/material.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/components/body.dart';
import 'package:m_placement_tracker/Screens/Home/Home-Admin/components/navigation_drawer_widget.dart';
import 'package:m_placement_tracker/main.dart';

class HomeAdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      body: Body(),
      appBar: AppBar(
        title: Text(MyApp.adminDashboard),
      ),
    );
  }
}
