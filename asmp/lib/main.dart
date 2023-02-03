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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(

          decoration: BoxDecoration(
              color: Color(0xFF15202B),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),
          height: 278,
        width: MediaQuery.of(context).size.width,

        child:Column(

          children: [

          Container(

            width: 400,
            child: Padding(
        padding: EdgeInsets.only(top: 44.0,left: 24.0,right: 24.0),
        child: Text("Enter ethereum address",style: TextStyle(color: Color(0xFFF5F8FA),fontSize: 24,),)),
          ),

            Container(
              width:400,
              child: Padding(
                padding: EdgeInsets.only(top: 16,left: 24,right: 24),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF253341),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  height: 56,
                //  color: Color(0xFF253341),

                  child:TextField(
                    style: TextStyle(color: Color(0xFFF5F8FA)),


                    decoration: InputDecoration(

                        labelText: 'Address',
                      labelStyle: TextStyle(color: Color(0xFFAAB8C2)),
                      border: InputBorder.none,

                    ),
                  ) ,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40,left: 24,right: 24),
              child: SizedBox(
                height: 49,
                width: 350,
                child: ElevatedButton(

                  child: Text('Confirm'),
                  onPressed: (){},
                ),
              ),
            )
           ],

        ),
        ),
      )
    );
  }
}
