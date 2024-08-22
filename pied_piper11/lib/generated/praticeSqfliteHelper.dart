import 'package:flutter/widgets.dart';

import 'praticeSqfliteDatabaseService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class PraticesqflitehelperUi extends StatefulWidget {
  const PraticesqflitehelperUi({super.key});

  @override
  State<PraticesqflitehelperUi> createState() => _PraticesqflitehelperUiState();
}

class _PraticesqflitehelperUiState extends State<PraticesqflitehelperUi> {
  final dbService = DatabaseService();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();


  void showBottomSheet(String functionName, Function()?
  onPressed) {
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) =>   Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)
                ),
              ),
              SizedBox(height: 13,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)
                ),
              ),
              SizedBox(height: 13,),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: onPressed,
                  child: Text(functionName),
              ),
            ],
          ),
        )
    );
  }

  void addUser(){
    showBottomSheet(
    'Add User', () async{
      var user = User_model(
          id: 'id',
          name: nameController.text,
          email: emailController.text,
          age: int.parse(ageController.text)
      );
      dbService.insertUser(user);
      setState(() {
        nameController.clear();
        emailController.clear();
        ageController.clear();
        Navigator.of(context).pop();
      });
    }
    );
  }

  void editUser(User_model user){
    nameController.text = user.name;
    emailController.text = user.email;
    ageController.text = user.age.toString();
    showBottomSheet(
        'Update User', () async{
      var updatedUser = User_model(
          id: user.id,
          name: nameController.text,
          email: emailController.text,
          age: int.parse(ageController.text)
      );
      dbService.editUser(updatedUser);
      setState(() {
        nameController.clear();
        emailController.clear();
        ageController.clear();
        Navigator.of(context).pop();
      });
    }
    );
  }

  void deleteUser(String id){
    dbService.deleteUser(id);
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
      appBar: AppBar(backgroundColor: Colors.yellowAccent,
        title: Text('Sqflite Advanced',style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 20,
          fontWeight: FontWeight.w400
        ),),
      ),
      body: FutureBuilder(
          future: dbService.getUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator(backgroundColor: Colors.white,color: Colors.green,);
            } else if (snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData){
              if (snapshot.data!.isEmpty){
                return Center(
                  child: Text('No Users Found'),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                  itemBuilder: (context,index) => Card(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(15),
                    child: ListTile(
                      title: Text(snapshot.data![index].name + '' + snapshot.data![index].age.toString(),),
                      subtitle: Text(snapshot.data![index].email),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () => editUser(snapshot
                                .data![index]),
                                icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () => deleteUser(snapshot.data![index].id),
                                icon: Icon(Icons.edit))
                          ],
                        ),
                      ),
                    ),
                  )
              );
            }
            return Center(child: Text('No User Found'),);
    }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => addUser(),
      ),
    );
  }
}

class User_model{
  final String id;
  final String name;
  final String email;
  final int age;

  User_model({
    required this.id,
    required this.name,
    required this.email,
    required this.age,

});
  factory User_model.fromJson(Map<String, dynamic> data) =>
      User_model(id: data['id'], name: data['id'], email: data['id'], age: data['id'],);

  Map<String, dynamic> toMap() => {
    'id':id,
    'name':name,
    'email':email,
    'age':age,
  };

}