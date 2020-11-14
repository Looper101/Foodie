import 'package:flutter/material.dart';
import 'package:launch_app/models/tag.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          AppBarM(),
          Tags(),
          SubHeadingWithUnderline(),
          // SliverToBoxAdapter(
          //   child: GridView.builder(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2),
          //       itemBuilder: (context, index) {
          //         return Container(
          //           child: Text('Hello'),
          //         );
          //       }),
          // )

          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                        ),
                        height: 40,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('Title'),
                          Text('Actions goes here')
                        ],
                      ),
                    )
                  ],
                ),
              );
            }, childCount: tags.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          )
        ],
      ),
    );
  }
}

class SubHeadingWithUnderline extends StatelessWidget {
  const SubHeadingWithUnderline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 10),
        height: 30,
        child: Stack(
          children: <Widget>[
            Text(
              'Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Positioned(
                bottom: 3,
                left: 0,
                child: Container(
                  height: 5,
                  width: 81,
                  color: Colors.green.withOpacity(0.6),
                ))
          ],
        ),
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tags.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tags[index].tag,
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}

class AppBarM extends StatelessWidget {
  const AppBarM({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      floating: true,
      backgroundColor: Colors.white,
      title: Text(
        'Spoty',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.0),
      ),
      actions: <Widget>[
        CircularButtonWithIcon(
          icon: Icons.search,
        ),
        CircularButtonWithIcon(
          icon: Icons.tune,
        ),
      ],
    );
  }
}

class CircularButtonWithIcon extends StatelessWidget {
  const CircularButtonWithIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}
