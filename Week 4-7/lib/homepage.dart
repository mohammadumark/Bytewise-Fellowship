import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('My App'),
        leading: IconButton(
          icon: Icon(
            isMenuOpen ? Icons.close : Icons.menu,
            color: Colors.white,
          ),
          onPressed: toggleMenu,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Do something when search button is pressed
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Do something when cart button is pressed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isMenuOpen) ...[
              Container(
                color: Colors.white.withOpacity(0.8),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                          backgroundImage: AssetImage('assets/person.jpeg'),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
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
                    leading: const Icon(Icons.report),
                    title: const Text('Report'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {},
                  ),
                  // const Divider(),
                  ListTile(
                    leading: const Icon(Icons.credit_card),
                    title: const Text('Payments'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text('Wishlist'),
                    onTap: () {},
                  ),
                  // const Divider(),
                  ListTile(
                    leading: const Icon(Icons.store),
                    title: const Text('Store Locator'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.local_offer),
                    title: const Text('Promotions'),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}