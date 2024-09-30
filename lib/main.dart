import 'package:flutter/material.dart';
import 'package:peliculas/buscarWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 83)),
        useMaterial3: true,
      ),
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        centerTitle: true,
        shadowColor: Colors.deepOrange,
        elevation: 10,
        toolbarHeight: 80,
        actions:[IconButton(
          onPressed: (){}, 
          icon: const Icon(
            Icons.more_vert,
             size: 35,
             )
             )],
          leading: IconButton(
            onPressed: (){},
             icon: const Icon(
              Icons.home,
              size:45,
            )
          ),
      ),
      body:
       Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          BuscarMyWidget(),
          SizedBox(height:10),
          Container(
            child: Text('Elemento 1, pero mucho mas largo', style: TextStyle(fontSize:20),),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green
            ),
            ),
            SizedBox(height:10),
          Container(
            child: Text('Elemento 2 no tan largo', style: TextStyle(fontSize:20),),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.yellow
            )
          ),
          SizedBox(height:10), 
          Container(
            child: Text('Elemento 3', style: TextStyle(fontSize:20),),
            height: 200,
            decoration: BoxDecoration(
              color:Colors.red 
            ),
          ),
          SizedBox(height:10) 

          ],
      )
    );
  
  }
}




