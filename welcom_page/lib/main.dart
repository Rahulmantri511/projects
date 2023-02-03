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
      backgroundColor: Color(0xFF15202B),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      // Padding(
      //   padding: EdgeInsets.only(top: 251,bottom: 251,left: 24,right: 24),
       // child:
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 200,bottom: 200,left: 24,right: 24),
            child: Container(

              height: 500,
                width: 350,
                child:Column(
                  children: [
                    Image.asset('assests/images/image 6.png',),
                    Padding(
                      padding: EdgeInsets.only(top: 40,left: 14,right: 14),
                      child: Container(
                        height: 76,
                        width: 325,

                        child: Column(
                          children: [
                            Text("Hey! Welcome ",style: TextStyle(fontSize: 34,color: Colors.white),),
                            Padding(
                              padding:EdgeInsets.only(top: 16),
                              child: Text("Create and Sell your NFT in 1 seconds",style: TextStyle(fontSize: 16,color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                    // Padding(
                    //   padding: EdgeInsets.only(top: 220),
                    //   child: Container(
                    //     height: 76,
                    //     width: 325,
                    //     color: Colors.green,
                    //   ),
                    // )



                )



                ),
          ),
        ),
      //)

    );
  }
}
