import 'package:flutter/material.dart';
import 'package:ismprod_final_project/model/request/user_model.dart';
import 'package:ismprod_final_project/services/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    users = await UserService().fetchDataUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1650C0),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: const Text(
          "Data User",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: ListTile(
              title: Text('${users[index].nipp}'),
              subtitle: Text('${users[index].nama}'),
              leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(users[index].foto),
              //child: Image.network(unprod[index].foto_unprod, fit: BoxFit.fill, width: 20, height: 20)
              ),
              //leading: Image.network(users[index].foto,),
              
            ),
          ),
        ),
      ),
    );
  }
}
