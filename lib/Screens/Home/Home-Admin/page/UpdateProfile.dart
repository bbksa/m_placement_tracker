import 'package:flutter/material.dart';

class UpdateProfilePage extends StatelessWidget {
  
  // Future pickImage() async {
  //   final image = await imagePicker().pickImage(source: ImageSource.gallery);
  //   if (image == null) return;
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Update Profile'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Material(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40),
            children: <Widget>[
              
              const SizedBox(height: 40),
              CircleAvatar(radius: 100),

              imagePicker(
                title: "Select Photo",
                icon: Icons.camera_alt_outlined,
                onClicked: () {
                  // pickImage();
                },
              ),

              const SizedBox(height: 12),
              Text("Name",  textAlign: TextAlign.left, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 25)),

              const SizedBox(height: 12),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ),

              const SizedBox(height: 12),
              Text("Email", textAlign: TextAlign.left, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 25)),
              
              const SizedBox(height: 12),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email.';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ),

              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {  },
                child: const Text('Save', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 20)),
              ),


              // ButtonWidget(
              //   icon: Icons.open_in_new,
              //   text: 'Open Drawer',
              //   onClicked: () {
              //   Scaffold.of(context).openDrawer();
              //   },
              // ),
            ],
          ),
        ),
      );


      Widget imagePicker({
        String title, 
        IconData icon, 
        VoidCallback onClicked,
        }) =>  InkWell(
                onTap: onClicked,
                child: Container(
                  // padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
                  child: Row(
                    children: [
                      Icon(icon, size: 50),
                      const SizedBox(width: 10),
                      Text(title, style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 25)),        
                    ],
                  ),
                ),
              );

  // imagePicker({String title, IconData icon, Null Function() onClicked}) {
  //   ElevatedButton(
  //     style: ElevatedButton.styleFrom(
  //       minimumSize: Size.fromHeight(56),
  //       primary: Colors.white,
  //       onPrimary: Colors.black,
  //       textStyle: TextStyle(fontSize: 20),
  //     ),
  //     child: Row(
  //       children: [
  //         Icon(icon, size: 28),
  //         const SizedBox(width: 16),
  //         Text(title),
  //       ],
  //     ),
  //     onPressed: onClicked,
  //   );
  // }
}
