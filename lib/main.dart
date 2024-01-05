import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/features/home/data/data_source/remote_data_source.dart';

void main(){
  runApp(const FakesStoreApp());

  }
class FakesStoreApp extends StatelessWidget {
  const FakesStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
    );
  }
  }
  class App extends StatefulWidget {
    const App({super.key});

    @override
    State<App> createState() => _AppState();
  }

  class _AppState extends State<App> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('FakeStore'),
        ),
        body: FutureBuilder(
          future: HomeRemoteDataSource(Dio()).getProducts(),
         builder: (context,snapshot){
if (snapshot.connectionState == ConnectionState.done){
      return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemCount: snapshot.data !.length,
      itemBuilder: (_ ,index){
      return Container(
margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 100,
          child:  Image.network(snapshot.data![index].image),),

      ],
      )
      );
      }
      );
      }else{
  return const Center(child: CupertinoActivityIndicator());
}
    }
        ),
      );
    }
  }
