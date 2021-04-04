import 'package:flutter/material.dart';
import './pokemon.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon details;
  PokemonDetails({this.details});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width - 20.0,
            height: MediaQuery.of(context).size.height / 1.5,
            left: 10.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(details.name),
                  Text("Height: ${details.height}"),
                  Text("Weight: ${details.weight}"),
                  Text("Types"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: details.type
                        .map((t) => FilterChip(
                              label: Text(t),
                              onSelected: (b) {},
                            ))
                        .toList(),
                  ),
                  Text("Weakness"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: details.weaknesses
                        .map((t) => FilterChip(
                              label: Text(t),
                              onSelected: (b) {},
                            ))
                        .toList(),
                  ),
                  Text("Next Evolutions"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: details.nextEvolution
                        .map((n) => FilterChip(
                              label: Text(n.name),
                              onSelected: (b) {},
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: details.id,
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(details.img))),
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text(details.name.toString()),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: bodyWidget(context),
    );
  }
}
