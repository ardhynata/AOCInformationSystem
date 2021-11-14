import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/Screens/Chat/models/chat_user_model.dart';
import 'package:flutter_auth/Screens/Chat/widgets/conversation_list.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Adib", messageText: "Gaskeun,slur!", imageUrl: "images/userImage1.jpeg", time: "Sekarang"),
    ChatUsers(name: "Adin", messageText: "Hmmm", imageUrl: "images/userImage2.jpeg", time: "Yesterday"),
    ChatUsers(name: "Mayang", messageText: "Gimana bro?", imageUrl: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers(name: "Adam", messageText: "Bentar, lagi makan", imageUrl: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers(name: "Rindan", messageText: "Di McDonald Kertajaya", imageUrl: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Lintang", messageText: "Update data.", imageUrl: "images/userImage6.jpeg", time: "17 Mar"),
    ChatUsers(name: "Frizy", messageText: "Hehehehehe", imageUrl: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "Nanda", messageText: ".....................", imageUrl: "images/userImage8.jpeg", time: "18 Feb"),
    ChatUsers(name: "Nando", messageText: "Wkwkwkwkwkwkwk", imageUrl: "images/userImage7.jpeg", time: "18 Feb"),
    ChatUsers(name: "Temmy", messageText: "Semuanya wkwkwkwk", imageUrl: "images/userImage8.jpeg", time: "17 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Percakapan",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kPrimaryAlpha,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: kPrimaryColor,size: 20,),
                          SizedBox(width: 2,),
                          Text("Tambahkan Baru",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Pencarian...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageUrl,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}