import 'package:flutter/material.dart';
import'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends  {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)
        ),
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int currentpage = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homepage(),
      bottomNavigationBar: BottomAppBar(
        child:Row(
          children: [
            IconButton(
            icon: Icon(
              Icons.home,size: 28,
            color: currentpage == 0 ? 
            Color.fromARGB(201, 227, 9, 111):
            Color.fromARGB(202, 101, 1, 48),
            ),
             onPressed: (){},
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.search, size: 28,
            color: currentpage == 1 ? 
            Color.fromARGB(201, 227, 9, 111):
            Color.fromARGB(202, 101, 1, 48),
            ),
             onPressed: (){
              setState(() {
                currentpage =1;
              });
             },
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.add_box_outlined,size: 28,),
             onPressed: (){},
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.ondemand_video,size: 28,),
             onPressed: (){},
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.circle,size: 28,),
             onPressed: (){},
            ),
          ],
        ) 
        ),
    );
  }
}
