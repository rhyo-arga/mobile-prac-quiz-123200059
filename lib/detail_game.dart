import 'package:flutter/material.dart';
import 'package:mobile_prac_quiz/game_store.dart';

class DetailGame extends StatefulWidget {
  final GameStore list;
  const DetailGame({Key? key, required this.list}) : super(key: key);

  @override
  State<DetailGame> createState() => _DetailGameState();
}

class _DetailGameState extends State<DetailGame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.list.name),
          actions: [
            IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.share,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.list.imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(
                      widget.list.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
