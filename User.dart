import 'package:flutter/material.dart';

class UserModal {
  final int id;
  final String name;
  final String phone;

UserModal({
required this.id,
required this.name,
required this.phone,
});

}

class User extends StatelessWidget {
  List<UserModal>users=[
UserModal(
  id: 1,
  name: 'Mhmd S. Hamouda',
  phone: '+201112924398',
),
UserModal(id: 2, name: 'Abdalla', phone: "+20111111111"),
UserModal(id: 3, name: 'Ahmed', phone: "+2011112222222"),
UserModal(
  id: 4,
  name: 'Mhmd S. Hamouda',
  phone: '+201112924398',
),
UserModal(id: 5, name: 'Abdalla', phone: "+20111111111"),
UserModal(id: 6, name: 'Ahmed', phone: "+2011112222222"),
UserModal(
  id: 7,
  name: 'Mhmd S. Hamouda',
  phone: '+201112924398',
),
UserModal(id: 8, name: 'Abdalla', phone: "+20111111111"),
UserModal(id: 9, name: 'Ahmed', phone: "+2011112222222"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
          ),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModal user) => Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text(
                '${user.id}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${user.name}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  //1- build item
  //2- build list
  //3- add item to list

}
