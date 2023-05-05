import 'package:flutter/material.dart';
class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/Login.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/l2.png'),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.key),
            title: const Text('Account'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Security'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chat'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.doorbell),
            title: const Text('Notification'),
            onTap: () {},
          ),
          // const Divider(),
          ListTile(
            leading: const Icon(Icons.storage_rounded),
            title: const Text('Storage and data'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('App language'),
            onTap: () {},
          ),
          // const Divider(),
          ListTile(
            leading: const Icon(Icons.question_mark_rounded),
            title: const Text('help'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );

  }
}
