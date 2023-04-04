import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            const SizedBox(      /////////////////Sized box and devider
              height: 50,
            ),
           const Divider(color: Colors.black,thickness: 3,),
           // SizedBox(
           //   height: 100,
           // //   child: VerticalDivider(color: Colors.black,),
           // // ),

            const Center(
            child: CircleAvatar(  ///////////Circle avatar widget
              radius: 80,
              backgroundColor: Colors.blue,
              // backgroundImage: NetworkImage('https://www.pexels.com/photo/woman-wearing-black-spaghetti-strap-top-415829/'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 18, color: Colors.black),

              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),

                hintText: 'Email',   ////////////focused boarder
                //labelText: 'Email',
                hintStyle: TextStyle(fontSize: 14, color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                  // borderRadius: BorderRadius.circular(10),

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  // borderRadius: BorderRadius.circular(10),
                ),
              ),


            ),
          ),
          Container(          ///////////container
            height: 40,
            width: 80,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              // border: Border.all(
              //   color: Colors.blue,
              //   width: 0
              // ),
              // image: const DecorationImage(
              //   fit: BoxFit.fill,
              //   // image: NetworkImage('https://images.pexels.com/photos/235985/pexels-photo-235985.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
              // ),

              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 100,
                )
              ]
            ),
            child: const Center(child: Text('Login')),
          ),
          RichText(text: TextSpan(         ////rich text
            text: 'dont have an account?',
            style: Theme.of(context).textTheme.bodyText1,
            children: const [
              TextSpan(text: 'SignUp',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:18)),
            ]
          )),
          const ListTile(           //////////list tile
            leading: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.blue,
               backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Ficon%2Fmale-man-people-person-avatar-white-tone%2F159363&psig=AOvVaw3l7LlEmk42T8zw9kQhzKVM&ust=1680707177205000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCIDc0aPAkP4CFQAAAAAdAAAAABAJ'),
            ),
            title: Text('Umar'),
            subtitle: Text('Hello eyeryone!'),
            trailing: Text('20:01'),
          ),
          Expanded(child:
          ListView.builder(  /////////list view
              itemCount:1000,
              itemBuilder: (context, index)
              {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Ficon%2Fmale-man-people-person-avatar-white-tone%2F159363&psig=AOvVaw3l7LlEmk42T8zw9kQhzKVM&ust=1680707177205000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCIDc0aPAkP4CFQAAAAAdAAAAABAJ'),
                  ),
                  title: Text('Umar'),
                  subtitle: Text('Hello eyeryone!'),
                  trailing: Text('20:01'),
                );
              }
          ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
