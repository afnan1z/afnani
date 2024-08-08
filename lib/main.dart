import 'package:flutter/material.dart';
import 'user.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

bool isSecured = true;
Map<String ,User> users= {
"afnan3ks@gmail.com":User(email:"afnan3ks@gmail.com",passward :"26767367"),
"lollos@gmail.com":User(email:"lollos@gmail.com",passward :"ggs7479"),
"hamod@gmail.com":User(email:"hamod@gmail.com",passward :"vstygx370A"),
"hanan89n@gmail.com":User(email:"hanan89n@gmail.com",passward :"264b96")
};
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwardController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(144, 9, 48, 11),
        title: const Center(
          child: Text(
            "MINECRAFT",
            style: TextStyle(fontSize: 23, color: Colors.white,fontFamily: AutofillHints.creditCardSecurityCode),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              'assets/mincrafta.jpg',
              width: 500,
              height: 500,
            ),
            SizedBox(
                  height: 50,
                ),
            Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    label: Text('Enter Email'),
                    prefix: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: passwardController,
                  obscureText: isSecured,
                  decoration: InputDecoration(
                    label: Text('Enter password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured =! isSecured ;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                     // ignore: unused_local_variable
                     User user  = users[emailController.text]!;
                     // ignore: unused_local_variable
                     if(user.email== emailController.text && user.passward== passwardController.text ){
                      print('lgged');

                     }else{
                      print('email or passward is wrong');
                     };
                  },
                 
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Color.fromARGB(144, 9, 48, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'START',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
