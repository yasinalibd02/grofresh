import 'package:flutter/material.dart';

class draweWidget extends StatelessWidget {
  const draweWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            accountName: new Text('Guest'),
            accountEmail: new Text('guestemail@email.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://avatarfiles.alphacoders.com/848/84855.jpg'),
            ),
          ),

          new ListTile(
            title: new Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/restaurant_screen');
            },
          ),
          new ListTile(
            title: new Text('All Categories'),
            leading: Icon(Icons.category),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/nearby_screen');
            },
          ),
          new ListTile(
            title: new Text('Shoping bag'),
            leading: Icon(Icons.shopping_bag),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/request_screen');
            },
          ),
          new ListTile(
            title: new Text('My order'),
            leading: Icon(Icons.add_shopping_cart_outlined),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Setting'),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
          
          new ListTile(
            title: new Text('About'),
            leading: Icon(Icons.info_outline),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Logout'),
            leading: Icon(Icons.power_settings_new),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
