import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  static const String screenRoute ='chat_screen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //final _auth =FirebaseAuth.instance;
  //late User singnedInUser;
@override
 
  void initState() {

    super.initState();
    grtCurrentUser();
  }
  void grtCurrentUser(){
    
//try {
 // final user = _auth.currentUser;
   //   singnedInUser=user;
   //   print(singnedInUser.email);

  //  }
} //catch (e) {
 // print(e);
 // 
//}

 // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          //لانشاء القائمة الجانبيه



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
        
        
        
        
        
                //الصوررة الدائرية فوق الاسم في القائمة
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
        
        
            )
            
            ],
          ),
        ),


      ),


      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 24, 166, 201),
        title: Row(
          children: [
            Image.asset('images/logo.jpg', height: 35,),
            const SizedBox(width: 10),
            const Text('ALmolham chat')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // add here logout function
            //  _auth.signOut();
             //Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
