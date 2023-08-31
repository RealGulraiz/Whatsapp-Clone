import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Call')),
              ]
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context, ) => [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Settings')),
                ]
            ),
          ],
        ),

        body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 39,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      title: Text('Adam'),
                      subtitle: Text('Where is my cat'),
                      trailing: Text('6:50 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 39,
                  itemBuilder: (context, index) {
                    if(index == 0) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text('My Status'),
                        subtitle: Text('Today, 3:06 am'),
                      );
                    } else if(index == 1) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, top: 14, bottom: 14, ),
                            child: Text('Recent updates' , style: TextStyle(color: Colors.black54),),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: Text('Adam Ali'),
                            subtitle: Text('Today, 1:20 pm'),
                          ),
                        ],
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text('Adam Ali'),
                        subtitle: Text('Today, 1:20 pm'),
                      );
                    }
                  }
              ),
              ListView.builder(
                  itemCount: 39,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Jacob Goldsmith'),
                      subtitle: Text( index/2 == 0 ? 'Yesterday, 9:21 pm' : '23 April, 11:37 am'),
                      trailing: Icon( index/2 != 1 ? Icons.call : Icons.videocam_rounded),
                    );
                  }
              ),
            ]
        ),
      ),
    );
  }
}
