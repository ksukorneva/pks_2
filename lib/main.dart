import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
bool _isChecked = false;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:
      const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFC0CBFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFC0CBFF),
        toolbarHeight: 100,
        title: const Center (child: Text.rich(
          TextSpan(
            text: "Авторизация",
            style: TextStyle(
              fontSize: 32,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ),
      ),


      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.pinkAccent,
              filled: true,
              hintText: 'Логин',
            ),
            ),
          ),


          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.pinkAccent,
                filled: true,
                hintText: 'Пароль'
            ),
            ),
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                side: const BorderSide(color: Colors.pinkAccent, width: 2),
              ),
              const Text(
                'Запомнить меня',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),




          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.pinkAccent,
              ),
              child: const Text(
                "Войти",
                style: TextStyle(
                  color: Color(0xFFC0CBFF),
                  fontSize: 18,
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.pinkAccent, width: 2.0),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "Регистрация",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed:(){},
              child: const Text("Восстановить пароль",
                style: TextStyle(color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}