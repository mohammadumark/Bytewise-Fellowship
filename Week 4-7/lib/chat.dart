import 'package:flutter/material.dart';
import 'package:login/navbar.dart';
// import 'package:login/navbar.dart';

class ChattingAppHomeScreen extends StatefulWidget {
  const ChattingAppHomeScreen({Key? key}) : super(key: key);

  @override
  _ChattingAppHomeScreenState createState() => _ChattingAppHomeScreenState();
}

class _ChattingAppHomeScreenState extends State<ChattingAppHomeScreen> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  final List<String> _chats = [    'Group chat 1',    'Group chat 2',    'Group chat 3',    'Group chat 4',    'Group chat 5',    'Group chat 6',    'Group chat 7',    'Group chat 8',    'Group chat 9',    'Group chat 10',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context)=> IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.settings))

          // IconButton(
          //   icon: Icon(
          //     isMenuOpen ? Icons.close : Icons.menu,
          //     color: Colors.white,
          //   ),
          //   onPressed: toggleMenu,
          // ),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Do something when search button is pressed
            },
          ),
          // IconButton(
          //   icon: const Icon(Icons.more_vert),
          //   onPressed: () {
          //     // Do something when more button is pressed
          //   },
          // ),
        ],
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/l2.png'),
                ),
                title: Text(_chats[index]),
                subtitle: const Text('Hello! How are you?'),
                trailing: const Text('12:30 PM'),
              ),
              const Divider(height: 10),
            ],
          );
        },
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children:[
              const navbar(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
    );
  }

}

