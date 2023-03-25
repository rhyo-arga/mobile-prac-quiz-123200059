import 'package:flutter/material.dart';
import 'package:mobile_prac_quiz/detail_game.dart';
import 'package:mobile_prac_quiz/game_store.dart';

class ListGame extends StatelessWidget {
  const ListGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("List Game"),
          ),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index){
                final GameStore list = gameList[index];
                return Column(
                  children: [
                    Card(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailGame(list: list)
                              ));
                        },
                        child: Image.network(
                            list.imageUrls[0],
                            width: 400,
                            fit: BoxFit.fill,
                          ),

                      ),
                    ),
                    Text(list.name),
                    Text(list.price)
                  ],
                );
              },
              itemCount: gameList.length,
          ),
        ),
    );
  }
}
