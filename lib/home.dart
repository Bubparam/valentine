import 'package:flutter/material.dart';
import 'package:valen/valen.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavourite = true;
  final _controller1 = TextEditingController();
  final List<valen> valenList = [
    valen(
        name: 'Tom Holland',
        pos: 'You make my heart warm and happy.',
        com: 'Of course !',
        pro: 'assets/images/tom.jpg',
        img: 'assets/images/date1.jpg',
        com2: 'I hope you enjoy today',
        name2: 'Andrew Garfield',),
    valen(
        name: 'Andrew Garfield',
        pos: 'I think about you all the time.',
        com: 'I am OK',
        pro: 'assets/images/and.jpg',
        img: 'assets/images/date2.jpg',
        com2: 'hope you are very happy',
        name2: 'Tom Holland',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('InstaValentine')),
        body: ListView.builder(
            itemCount: valenList.length,
            itemBuilder: (context, index) => Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage(valenList[index].pro),
                              radius: 20,
                            ),
                          ),
                          Text(valenList[index].name),
                          Expanded(
                            child: Container(),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Image.asset(valenList[index].img),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(valenList[index].pos),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              '${valenList[index].name2} ',
                              style: TextStyle(color: Colors.pink),
                            ),
                            Text(valenList[index].com2),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              '${valenList[index].name} ',
                              style: TextStyle(color: Colors.pink),
                            ),
                            Text(valenList[index].com),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: IconButton(
                              icon: Icon(Icons.favorite,color: isFavourite ? Colors.black26 : Colors.pink),
                              onPressed: () {
                                setState((){
                                  isFavourite = !isFavourite;
                                });
                              },
                            ),
                          ),
                              Expanded(
                                child: TextField(
                                    controller: _controller1,
                                    decoration: InputDecoration(
                                      hintText: 'Add a comment',),
                                      onChanged: (String value) async{
                                      setState((){

                                        });
                                      }
                                    ),
                              ),
                        ],
                      ),
                    ]),
              ),
            )));
  }
}
