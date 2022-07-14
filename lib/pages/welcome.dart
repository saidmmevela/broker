import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  // const Welcome({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the Welcome object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: SizedBox(
        
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("images/img2.jpeg"),
                    fit: BoxFit.cover,
                  )
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Broker",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'Discover dream house from smartphone',
                  textAlign:TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Text(
                  'The No 1 App for searching and finding the most suitable house.',
                  textAlign:TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 221, 213, 213),fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: OutlinedButton(
                        child: SizedBox(
                          width:MediaQuery.of(context).size.width/1.7,
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Center(child: Text("Register",style: TextStyle(fontSize:15),)),
                          )
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          onSurface: Colors.red,
                          
                          backgroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          )
                        ),
                        
                        onPressed: () async {}
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                    'Already have an account? ',
                    textAlign:TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 221, 213, 213),fontSize: 15),
                  ),
                  Text(
                    ' Login',
                    textAlign:TextAlign.center,
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}