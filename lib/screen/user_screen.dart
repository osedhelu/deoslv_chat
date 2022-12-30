import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final RefreshController _refreshController = RefreshController();
  late String title = "Users";
  late bool stateSocket = true;
  late List<UserModel> listUsers = [
    UserModel(
        online: false, name: 'Maria', email: 'maria@maria.com', uid: 'adsfsad'),
    UserModel(
        online: true,
        name: 'Carolina',
        email: 'carolina@admin.com',
        uid: '1111'),
    UserModel(
        online: false,
        name: 'Catalina',
        email: 'Catalina@Catalina.com',
        uid: '222'),
    UserModel(
        online: false, name: 'Ugenia', email: 'Ugenia@Ugenia.com', uid: '33'),
    UserModel(
        online: true, name: 'Yolanda', email: 'Yolanda@Yolanda.com', uid: '44'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Mi nombre',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: stateSocket
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green.shade400,
                  )
                : Icon(
                    Icons.block_rounded,
                    color: Colors.red.shade400,
                  ),
          )
        ],
        leading: IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "login");
            }),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _cargarUsers,
        header: WaterDropHeader(
          complete: Icon(
            Icons.check,
            color: Colors.blue.shade400,
          ),
          waterDropColor: Colors.blue.shade400,
        ),
        child: _listViewUsers(),
      ),
    );
  }

  ListView _listViewUsers() {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, i) => GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, 'chat'),
              child: ListTile(
                title: Text(listUsers[i].name),
                leading: CircleAvatar(
                    child: Text(listUsers[i].name.substring(0, 2))),
                trailing: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: listUsers[i].online
                          ? Colors.green.shade400
                          : Colors.red.shade400),
                ),
              ),
            ),
        separatorBuilder: (_, i) => const Divider(),
        itemCount: listUsers.length);
  }

  void _cargarUsers() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }
}
