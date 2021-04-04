import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './pokemon.dart';
import './pokemon-details.dart';

void main() {
  runApp(MaterialApp(
    title: 'Poke App',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokeHub pokehub;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var response = await http.get(
        "https://raw.githubusercontent.com/Biuni/PokemonGo-Pokedex/master/pokedex.json");
    print(jsonDecode(response.body));
    var res = jsonDecode(response.body);
    pokehub = PokeHub.fromJson(res);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poke App'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        leading: Icon(Icons.apps),
      ),
      body: pokehub == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 2,
              children: pokehub.pokemon
                  .map((e) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PokemonDetails(details: e)));
                        },
                        child: Hero(
                          tag: e.id,
                          child: Card(
                            elevation: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.network(e.img),
                                Text(
                                  e.name,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.cyan,
        onPressed: () {
          print('wel');
          setState(() {
            pokehub = null;
          });
          fetchData();
        },
      ),
    );
  }
}
