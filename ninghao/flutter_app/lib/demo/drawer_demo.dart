import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('Z大叔', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('xiaoZV587@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/image.jpg')
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
            ),
            leading: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
            ),
            leading: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
            ),
            leading: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
