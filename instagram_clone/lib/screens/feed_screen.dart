import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<String> storyImage = [
    'assets/images/stories_images/story-1.jpg',
    'assets/images/stories_images/story-2.jpg',
    'assets/images/stories_images/story-3.jpg',
    'assets/images/stories_images/story-4.jpg',
    'assets/images/stories_images/story-5.jpg',
    'assets/images/stories_images/story-6.jpg',
    'assets/images/stories_images/story-7.jpg',
    'assets/images/stories_images/story-8.jpg',
    'assets/images/stories_images/story-9.jpg',
    'assets/images/stories_images/story-10.jpg',
    'assets/images/stories_images/story-11.jpg',
    'assets/images/stories_images/story-12.jpg',
    'assets/images/stories_images/story-13.jpg',
    'assets/images/stories_images/story-14.jpg',
    'assets/images/stories_images/story-15.jpg',
    'assets/images/stories_images/story-16.jpg',
    'assets/images/stories_images/story-17.jpg',
    'assets/images/stories_images/story-18.jpg',
    'assets/images/stories_images/story-19.jpg',
  ];

  Widget _buildPost(String name, String profilePic, String postPic,
      String postTime, String likes, String comments) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Container(
        width: double.infinity,
        height: 550,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                              height: 50,
                              width: 50,
                              image: AssetImage(profilePic),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    title: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(postTime),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 8.0,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(postPic),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                  onPressed: () => print("Like Post"),
                                ),
                                Text(
                                  likes,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () => print("Comment Post"),
                                ),
                                Text(
                                  comments,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.bookmark_border),
                              iconSize: 30.0,
                              onPressed: () => print("Like Post"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Instagram",
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 32.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.live_tv,
                        size: 30.0,
                      ),
                      onPressed: () => print("IGTV"),
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 30.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.send,
                          size: 30.0,
                        ),
                        onPressed: () => print("Direct Message"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 19,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  SizedBox(width: 10.0);
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0),
                    ],
                  ),
                  child: CircleAvatar(
                      child: ClipOval(
                    child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(storyImage[index]),
                        fit: BoxFit.cover),
                  )),
                );
              },
            ),
          ),
          _buildPost(
              'Monika Sharma',
              'assets/images/stories_images/story-1.jpg',
              'assets/images/stories_images/story-1.jpg',
              '5 min',
              '2,515',
              '350'),
          _buildPost(
              'Ritika Kaur',
              'assets/images/stories_images/story-19.jpg',
              'assets/images/stories_images/story-10.jpg',
              '10 min',
              '3,520',
              '515'),
          _buildPost(
              'Tamanna Maheta',
              'assets/images/stories_images/story-18.jpg',
              'assets/images/stories_images/story-14.jpg',
              '12 min',
              '1,125',
              '56')
        ],
      ),
    );
  }
}
