import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Check Integer Category'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 TextEditingController inputController=TextEditingController();
  TextEditingController outputController=TextEditingController();
String res="";
//Function To check whether number is prime or composite
 String checkNumber(int num){
   if(num==2)
   { return "Prime";
    }
  else{
   int i=2;
   print(num/2);
   do{
     if(num%i==0)
     {
      return "Composite";
     }
     i++;
   }
   while(i<=num/2);}
   return "Prime";
   
 }

 

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      //Center Widget
      body: Center(
        //Container 
       child:Container(
        
       //  color: Colors.grey,

        //Column
         child:Column(
         
           children:[
             //Padding
             Padding(padding:EdgeInsets.fromLTRB(40,130,20,0),
             //Row
             child: Row(children: [
               //Text
              Text("Enter any Number : ",style:TextStyle(fontSize: 25,color:Colors.red,fontFamily:"Roboto",fontWeight:FontWeight.bold),
              ),
                  
             ],),),
             //Padding
              Padding(
               padding:EdgeInsets.fromLTRB(30,30,20,30),
            //Row
             child:Row(
               
               children:[
                    
                 new Flexible(
                   //Text Field
                   child:TextField(
                  decoration: InputDecoration(border:OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(10.0)),
                   labelText: 'Integer ',
                   hintText: 'Enter any Integer...'),
                   keyboardType: TextInputType.numberWithOptions(decimal: false,signed: false),
                   controller: inputController,
           ))
               ]
             )),
             Row(
               
               children:[
                 //Pading
                 Padding(
                   padding: EdgeInsets.fromLTRB(155,0,10,0),
                   //Elevated Button
                  child:ElevatedButton(onPressed:(){res=checkNumber(int.parse(inputController.text)); 
                                   if(res=="Composite")
                                   {
                                     outputController.text="Composite Number";
                                   }
                                    else{outputController.text="Prime Number";}
                                   
                                   },
                                   style: ElevatedButton.styleFrom(padding:EdgeInsets.symmetric(horizontal:20, vertical:20,),shape:new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0))),
                                  child: Text('Check Number',style: TextStyle(fontSize: 20),)),
                 )]
             ),
               Padding(
               padding:EdgeInsets.fromLTRB(30,30,20,30),
            child: Row(children: [
               new Flexible(
                   //Text Field
                   child:TextField(
                  decoration: InputDecoration(border:OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(10.0)),
                  
                   ),
                   enabled: false, 
                   controller: outputController,
                 
           ))
          ],))
           ]
         )
       )

        
      ),
      
    );
  }
}
