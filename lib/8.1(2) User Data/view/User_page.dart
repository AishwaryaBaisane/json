import 'package:flutter/material.dart';
import 'package:json/8.1(2)%20User%20Data/provider/User_Provider.dart';
import 'package:provider/provider.dart';

class User_Page extends StatelessWidget {
  const User_Page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          bottomOpacity: 3,
          elevation: 3,
          shadowColor: Colors.white,
          title: Text(
            'Json Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: userProvider.UserList.length,
          itemBuilder: (context, index) => Card(
            // shape: ,
            elevation: 4,
            margin: EdgeInsets.all(5),
            color: Colors.white,
            child: ListTile(
              leading: Text(userProvider.UserList[index].id.toString(),
                  style: TextStyle(fontSize: width * 0.06)),
              title: Text(
                userProvider.UserList[index].name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
              subtitle: Text(
                userProvider.UserList[index].username,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                userProvider.UserList[index].company.name +
                    "\n" +
                    userProvider.UserList[index].address.geo.lng,
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// {
//     "id": 1,
//     "name": "Leanne Graham",
//     "username": "Bret",
//     "email": "Sincere@april.biz",
//     "address": {
//       "street": "Kulas Light",
//       "suite": "Apt. 556",
//       "city": "Gwenborough",
//       "zipcode": "92998-3874",
//       "geo": {
//         "lat": "-37.3159",
//         "lng": "81.1496"
//       }
//     },
//     "phone": "1-770-736-8031 x56442",
//     "website": "hildegard.org",
//     "company": {
//       "name": "Romaguera-Crona",
//       "catchPhrase": "Multi-layered client-server neural-net",
//       "bs": "harness real-time e-markets"
//     }
//   },
