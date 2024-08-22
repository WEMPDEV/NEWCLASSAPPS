import 'package:flutter/material.dart';
import 'package:pied_piper11/ThemeNotifier.dart';
import 'package:provider/provider.dart';

class BaseScaffold extends StatelessWidget{
  final Widget body;
  final String tittle;
  const BaseScaffold({
    required this.body, required this.tittle, super.key
});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Settings',style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: const Icon(Icons.shield_moon),
              title: const Text('Dark Mode'),
              subtitle: const Text('Toggle your Screen for better experience'),
              trailing: Switch(
                value: context.watch<ThemeNotifier>().isDarkMode,
                onChanged: (value){
                  context.read<ThemeNotifier>().toggleTheme(value);
                },
              ),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: (){
                Navigator.pushNamed(context, '/signin');
              },
            ),
            ListTile(
              title: const Text('Account'),
              onTap: (){
                Navigator.pushNamed(context, '/signup');
              },
            ),
            ListTile(
              title: const Text('OTP'),
              onTap: (){
                Navigator.pushNamed(context, '/Otp');
              },
            ),
            ListTile(
              title: const Text('Profile Page'),
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: const Text('Demo Page'),
              onTap: (){
                Navigator.pushNamed(context, '/demo');
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: (){
                Navigator.pushNamed(context, '/Logout');
              },
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}