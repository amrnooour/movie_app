import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_item.dart';

class ListWatchList extends StatefulWidget {
  const ListWatchList({super.key});

  @override
  State<ListWatchList> createState() => _ListWatchListState();
}

class _ListWatchListState extends State<ListWatchList> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("favourite").get();
    data.addAll(querySnapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) =>
       SearchItem(image: data[index]["imageUrl"],
        title: data[index]["title"], date: data[index]["date"], overview: data[index]["overview"]),),
    );
  }
}
