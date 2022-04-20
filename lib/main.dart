import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //menghilangkan label debug di kanan atas
    debugShowCheckedModeBanner: false,
    title: "Latihan List View",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,

        // membuat title app bar berada di tengah atas
        title: Center(child: Text("Products")),
      ),
      //bungkus semua widget di dengan listview terlebih dahulu
      //widget di dalam listview seperti padding, singlechildscrollview, dan listview
      body: ListView(
        children: [
          //singlechildscrollview berfungsi untuk membuat widget dapat discroll
          //fungsinya hampir sama dengan listview
          SingleChildScrollView(
            //untuk merubah arah scroll menjadi ke kanan
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [],
            ),
          ),

          //membuat listview di dalam listview
          //perhatikan beberapa properti di dalamnya untuk menghidnari error
          ListView(
            //Jika tidak menyetel properti shrinkWrap, ListView akan sebesar induknya.
            //Jika menyetelnya ke true, maka besarnya akan menyesuaikan dengan ukuran content di dalamnya
            shrinkWrap: true,

            //membuat widget tidak dapat discroll sendiri
            //scrolling mengikuti parent
            physics: NeverScrollableScrollPhysics(),

            children: [
              ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkOUzgraDyfZ5tJ0zCrCe4c4zBYgPwOUyYA&usqp=CAU"), fit: BoxFit.cover)),
                  ),
                  title: Text("Brand New Shoes"),
                  subtitle: Text("Stock: 8"),
                  trailing: Icon(Icons.delete_outline)),
              ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), image: DecorationImage(image: NetworkImage("https://images.tokopedia.net/img/cache/500-square/product-1/2019/8/24/53392457/53392457_7db4dfa1-1127-4cc8-9dec-cc79a0d7c963_700_700"), fit: BoxFit.cover)),
                  ),
                  title: Text("Brand New Shoes"),
                  subtitle: Text("Stock: 9"),
                  trailing: Icon(Icons.delete_outline)),
              ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), image: DecorationImage(image: NetworkImage("https://id-test-11.slatic.net/original/2e4996bf9edf74c0646d2df13504ce4e.jpg"), fit: BoxFit.cover)),
                  ),
                  title: Text("Brand New Shoes"),
                  subtitle: Text("Stock: 2"),
                  trailing: Icon(Icons.delete_outline))
            ],
          ),
        ],
      ),
    );
  }
}
