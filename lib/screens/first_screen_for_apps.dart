


import 'package:chatmolham/screens/note_screen.dart';
import 'package:chatmolham/screens/welcome_screen.dart';
import 'package:chatmolham/widgete/my_button.dart';
import 'package:flutter/material.dart';
import 'package:chatmolham/screens/calculator_screen.dart';


class FirstScreenForApps extends StatefulWidget {
  static const String screenRoute ='frist_screen_for_apps';
  const FirstScreenForApps({Key? key}) : super(key: key);

  @override
  _FirstScreenForAppsState createState() => _FirstScreenForAppsState();
}

class _FirstScreenForAppsState extends State<FirstScreenForApps> {
  //final _auth = FirebaseAuth.instance;
int index=0;
final pages=[
 Center(child: Text('page1',style: TextStyle(fontSize: 30),),),
         Center(child: Text('page2',style: TextStyle(fontSize: 30),),),
          Center(child: Text('page3',style: TextStyle(fontSize: 30),),),
           Center(child: Text('page4',style: TextStyle(fontSize: 30),),),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected:(index) =>setState(() =>
          this.index=index
        ),
        height: 60,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
             selectedIcon: Icon(Icons.chat),
             label:'chat' ,
             
             
             
             ),
             NavigationDestination(
            icon: Icon(Icons.note_outlined),
             selectedIcon: Icon(Icons.note),
             label:'note' ,
             
             ),
             NavigationDestination(
            icon: Icon(Icons.calculate_outlined),
             selectedIcon: Icon(Icons.calculate),
             label:'calu' ,
             
             ),
             NavigationDestination(
            icon: Icon(Icons.timer_outlined),
             selectedIcon: Icon(Icons.timer),
             label:'soon' ,
             
             ),
        ]

        ),
      
     extendBodyBehindAppBar: true,
      //شغل القائمة كامل
      drawer: Drawer(
        child: Container(
          //هذا الدريكشن بوك للاستايل حق  القائمة الخيارات
          decoration:const  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [
              0.1,
              0.4,
              1],
              colors: [
                Color.fromARGB(255, 107, 105, 105),
                 Color.fromARGB(255, 214, 214, 235),
                  Color.fromARGB(255, 116, 86, 96)
              ]

            ),
          ),



          child: ListView(
            padding: EdgeInsets.zero,//هذا لتوسيع الصورة التي في خلف القائمة غلى اعلاء
            children: [
             const UserAccountsDrawerHeader(
                decoration:BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/logo.jpg"),
                  )
                ) ,
        
        
        
        
        
                //هذا لعمل ايقونة صغيرة فوق اسم الحساب
                currentAccountPicture: CircleAvatar(
                  backgroundImage:AssetImage("images/photo2.jpg"),
                ) ,
        
                accountName: Text("AL Molham "), 
                accountEmail: Text("ALmolham.apps@gmail.com")),
        
        
        
        
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("home"),
              onTap: (){
                
              },
        
        
            ),
             //هذا لعمل فاصل بين الايقونات حق القائمة
            const Divider(
              color: Colors.black,
            ),
           

            ListTile(
              leading: const Icon(Icons.flag),
              title: const Text("flag"),
              onTap: (){},
        
        
            ),
             //هذا لعمل فاصل بين الايقونات حق القائمة
            const Divider(
              color: Colors.black,
            ),

            ListTile(
              leading: const Icon(Icons.settings_phone),
              title: const Text("seting"),
              onTap: (){
                
                
               
              },
        
        
            ),
             //هذا لعمل فاصل بين الايقونات حق القائمة
            const Divider(
              color: Colors.black,
            ),
             ListTile(
              leading: const Icon(Icons.add_link),
              title: const Text("save the lik"),
              onTap: (){
                 Navigator.pushNamed(context, NoteScreen.screenRoute);
                
               
              },),
               //هذا لعمل فاصل بين الايقونات حق القائمة
              const Divider(
              color: Colors.black,
            ),
            
            ],
          ),
        ),


      ),

appBar: AppBar(
  title: Text('Welcome to your apps'),
  /*bottom:  TabBar(
          tabs: [
            Tab(text: 'chat',icon:Icon(Icons.chat)),
            Tab(text: 'note',icon:Icon(Icons.note)),
            Tab(text: 'culc',icon:Icon(Icons.calculate)),
            Tab(text: 'soon',icon:Icon(Icons.money)),
          ]),*/
  
        
 ),
 
body: 
Padding(
  
  padding: const EdgeInsets.symmetric(horizontal: 24),
  
  child:  Column(
    
   mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
   
  
  children: [pages[index],
    /* TabBarView(
      children: [
        Center(child: Text('page1',style: TextStyle(fontSize: 30),),),
         Center(child: Text('page2',style: TextStyle(fontSize: 30),),),
          Center(child: Text('page3',style: TextStyle(fontSize: 30),),),
           Center(child: Text('page4',style: TextStyle(fontSize: 30),),),
    ]  ),*/
  const SizedBox(height:5),
   MyButton3(
              color: const Color.fromARGB(255, 12, 123, 135),
              title: 'Chat',

              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.screenRoute);//هذا الامر لتنقل بين الصفحات
              },
            ),
  
  const SizedBox(height:5),
   MyButton3(
              color: const Color.fromARGB(255, 12, 123, 135),
              title: 'Note',

              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>NoteScreen()));
    },
            ),
             MyButton3(
              color: const Color.fromARGB(255, 12, 123, 135),
              title: 'Calculator',

              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>CalculatorScreen(),
                 ),
                 );
    },
            )],
  
  
  
  
  
  ),
 ),
    );
 
 
 }
 
}

