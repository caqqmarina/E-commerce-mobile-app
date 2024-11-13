import 'package:flutter/material.dart';

import '../screens/menu.dart';
import '../screens/productentry_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
             decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Column(
                children: [
                  Text(
                    'SLIME PALACE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Text(
                    "Need a slime? We've got it.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home Page'),
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => MyHomePage(),
                ));
              },
            ),
            ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Add Product'),
            onTap: () {
               Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => ProductEntryFormPage(),
                ));
            },
          ),
        ],
      ),
    );
  }
}