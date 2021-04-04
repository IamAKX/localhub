import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Profile'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/user_dummy_1.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Craig Kenter',
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed('/myprofile'),
            title: Text('My Profile'),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          Divider(
            color: Colors.grey[500],
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed('/changePassword'),
            title: Text('Change Password'),
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
          ListTile(
            title: Text('Help Center'),
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
