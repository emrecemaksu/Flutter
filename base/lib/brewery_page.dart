import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:base/modals.dart';
import 'package:flutter/material.dart';

class BreweryPage extends StatefulWidget {
  const BreweryPage({super.key});

  @override
  State<BreweryPage> createState() => _BreweryPageState();
}

class _BreweryPageState extends State<BreweryPage> {
  Future<List<Bweries>> bweriesFuture = getBwerie();
  static Future<List<Bweries>> getBwerie() async {
    const url = 'https://api.openbrewerydb.org/v1/breweries?per_page=3';
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body);
    return body.map<Bweries>(Bweries.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(title: const Text('Brewry')),
      body: Center(
          child: FutureBuilder<List<Bweries>>(
        future: bweriesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final bweries = snapshot.data!;
            return buildBwries(bweries);
          } else {
            return const Text('No Data');
          }
        },
      )),
    );
  }

  Widget buildBwries(List<Bweries> bweries) => ListView.builder(
        itemCount: bweries.length,
        itemBuilder: (context, index) {
          final bwerie = bweries[index];
          return Card(
            child: ListTile(
              title: Text(bwerie.name.toString()),
              subtitle: Text(bwerie.address_1.toString()),
            ),
          );
        },
      );
}
