import 'package:flutter/material.dart';
import 'package:youtube_app/video_page.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('Youtubeコピー'),
          actions: [
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                  //todo
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //todo
                },
              ),
            ),
          ],
    ),
       body: Container(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   SizedBox(
                     width: 70,
                     height: 70,
                     child: Image.network(
                         'https://www.linustock.com/images/uploads/2019/05/1559020257-1.png'
                     ),
                   ),
                   const SizedBox(width: 8,),
                   Column(
                     children: [
                       const Text('Youtubeコピー'),
                       FlatButton(
                         child: Row(
                           children: [
                             Icon(Icons.add,
                             color: Colors.red,),
                             Text('登録する'),
                           ],
                         ),
                         onPressed: (){
                           //todo
                         },
                       ),
                     ],
                   ),
                 ],
               ),
             ),
             Expanded(
               child: ListView.builder(
                 itemCount: items.length,
                 itemBuilder: (context, index) {
                   return ListTile(
                     onTap: () async {
                       //todo 画面遷移するコード
                       await Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => VideoPage(),
                         ),
                       );
                     },
                     contentPadding: EdgeInsets.all(8),
                     leading: Image.network(
                         'https://www.linustock.com/images/uploads/2018/08/1533885123.png'
                     ),
                     title: Column(
                       children: [
                         Text('いきもの図鑑',
                         style: TextStyle(
                           fontWeight: FontWeight.w500,
                         ),),
                         Row(
                           children: [
                             Text('4738回再生',
                             style: TextStyle(
                               fontSize: 13,
                             ),
                             ),
                             Text('3日前',
                               style: TextStyle(
                                 fontSize: 13,
                               ),
                             ),
                           ],

                         )
                       ],
                     ),
                     trailing: Icon(Icons.more_vert),
                   );
                 },
               ),
             )
           ],
         ),
       ),
     ),
    );
  }
}