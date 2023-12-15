import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:untitled2/auth system/firebase_options.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String name = "";
  List<Map<String, dynamic>> data = [
    {
      'name': 'Php',
      'image':
      'img/python.png',
    },
    {
      'name': 'Python',
      'image':
      'img/python.png',
    },
    {
      'name': 'Data - Scientist',
      'image':
      'img/python.png',
    },
    {
      'name': 'Ela',
      'image':
      'img/python.png',
    },
    {
      'name': 'Sue',
      'image':
      'img/python.png',
    },
    {
      'name': 'Lothe',
      'image':
      'img/python.png',
    },
    {
      'name': 'Alyssa',
      'image':
      'img/python.png',
    },
    {
      'name': 'Nichols',
      'image':
      'img/python.png',
    },
    {
      'name': 'Welch',
      'image':
      'img/python.png',

    },
    {
      'name': 'Delacruz',
      'image':
      'img/python.png',
    },
    {
      'name': 'Tania',
      'image':
      'img/python.png',
    },
    {
      'name': 'Jeanie',
      'image':
      'img/python.png',
    }
  ];

  addData() async {
    for (var element in data) {
      FirebaseFirestore.instance.collection('users').add(element);
    }
    print('all data added');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.grey, size: 28),
            title: Card(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshots.data!.docs[index].data()
                  as Map<String, dynamic>;

                  if (name.isEmpty) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['email'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  if (data['name']
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['email'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  return Container();
                });
          },
        ));
  }
}
