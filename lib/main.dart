import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Map<String, dynamic>> users = [
    {"id": 1, "fullName": "John Doe", "jobTitle": "Software Engineer"},
    {"id": 2, "fullName": "Jane Smith", "jobTitle": "Product Manager"},
    {"id": 3, "fullName": "Michael Johnson", "jobTitle": "UX Designer"},
    {"id": 4, "fullName": "Sarah Lee", "jobTitle": "Data Scientist"},
    {"id": 5, "fullName": "David Brown", "jobTitle": "DevOps Engineer"},
    {"id": 6, "fullName": "Emily Davis", "jobTitle": "Quality Assurance Analyst"},
    {"id": 7, "fullName": "William Garcia", "jobTitle": "Front-end Developer"},
    {"id": 8, "fullName": "Ashley Rodriguez", "jobTitle": "Business Analyst"},
    {"id": 9, "fullName": "Matthew Wilson", "jobTitle": "Full-stack Developer"},
    {"id": 10, "fullName": "Olivia Taylor", "jobTitle": "Project Manager"},
    {
      "id": 11,
      "fullName": "James Anderson",
      "jobTitle": "Database Administrator"
    },
    {"id": 12, "fullName": "Isabella Thomas", "jobTitle": "Data Analyst"},
    {"id": 13, "fullName": "Alexander Jackson", "jobTitle": "Mobile Developer"},
    {"id": 14, "fullName": "Ava Miller", "jobTitle": "Quality Engineer"},
    {"id": 15, "fullName": "Ethan Davis", "jobTitle": "Systems Administrator"}
  ];

  Widget _objtoUser(idx){
    var obj = users[idx];
    String title = obj["fullName"];
    String subtitle = obj["jobTitle"];
    return ListTile(
      leading: CircleAvatar(
        radius: 36,
        backgroundImage:
            NetworkImage(
                "https://randomuser.me/api/portraits/men/${idx + 1}.jpg"
            ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: (){},
      ),
      onTap: (){
        print("Tap on a user");
      },
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (content, index) => Divider(height: 1),
            separatorBuilder: (context, index) => _objtoUser(index),
            itemCount: users.length
        )
      ),
    );
  }
}
