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

    // than having to individually change instances of widgets.
    return Scaffold(
    backgroundColor: Color(0xFF253341),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Center(
        child: Padding(
          padding: EdgeInsets.only(left: 24,right: 24),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color:  Color(0xFFAAB8C2),
            ),
            height: 250,
            width: 350,

            child: Padding(
              padding: EdgeInsets.only(top: 36,left: 36,right: 34),
              child: Column(
                children: [
                  Expanded(
                      child:Text(
                          'I agree to the Terms of Service and Conditions of Use including consent '
                  'to electronic communications and I  affirm that the information provided is my own',
                      style: TextStyle(fontSize: 16),
                      ),
                  ),
            ButtonBar(
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 170),
                    child: SizedBox(
                      width: 68,
                      child: TextButton(

                        child: Text("Disagree",style: TextStyle(fontSize: 12),),
                        onPressed: (){},
                      ),
                    ),
                  ),

                Padding(
                    padding: EdgeInsets.only(left: 40,bottom: 30 ),
                    child: SizedBox(
                      width: 158,
                      child: ElevatedButton(
                        child: Text("Agree and Continue",style: TextStyle(fontSize: 12),),
                        onPressed: (){},
                      ),
                    ),
                  ),

              ],
            ),






              ],
              )

            ),


        ),

      ),
    ),
    );
  }
}
