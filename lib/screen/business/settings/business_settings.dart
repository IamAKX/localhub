import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessProfileSettings extends StatefulWidget {
  @override
  _BusinessProfileSettingsState createState() =>
      _BusinessProfileSettingsState();
}

class _BusinessProfileSettingsState extends State<BusinessProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Settings'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            onTap: () => Navigator.of(context).pushNamed('/business/myprofile'),
            title: Text('View Profile'),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            onTap: () =>
                Navigator.of(context).pushNamed('/business/changePassword'),
            title: Text('Change Password'),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            title: Text('Help Center'),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            title: Text('Terms of Use'),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          Spacer(),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            title: Text(
              'Logout',
              style: GoogleFonts.openSans(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
