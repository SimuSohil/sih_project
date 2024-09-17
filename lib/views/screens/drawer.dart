import 'package:flutter/material.dart';
import 'package:statueist/constants.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(color: AppColors.color4),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: AppColors.color1,
                      child: Icon(Icons.person, color: AppColors.color3,),
                    ),
                    const SizedBox(width: 20,),
                    const Text('STATUEIST - ADMIN', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),)
                  ],
                )
              ),
            ),
            const ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payments and Refunds'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.favorite_sharp),
              title: Text('Favorites'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text('Permissions'),
            ),
            const Divider(),
            const SizedBox(height: 370,),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
            )
          ],
        )
      ),
    );
  }
}