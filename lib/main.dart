import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Tambal Ban Yogyakarta';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
} //TODO 1: pada class MyApp diatas adalah digunakan untuk AppBar aplikasi dengan isi Title Tambal Ban Yogyakarta.debugShowCheckedModeBanner: false, digunakan untuk menghilangkan tulisan Demo pada app bar

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.blue,
            title : new Text("Daftar Tambal Ban Terdekat")
        ),
        body : new ListView(
            children: <Widget>[
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Capung Ban"),
                  subtitle:new Text("Buka 24 jam"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 2: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle pertama
              ),
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Ban Original Pak Wawa"),
                  subtitle:new Text("Buka jam 07:00-23.00"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 3: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle kedua
              ),
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Tambal Ban OK JEK"),
                  subtitle:new Text("Buka 24 Jam"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 4: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle ketiga
              ),
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Tambal Ban Barokah"),
                  subtitle:new Text("Buka jam 09:00-19.00"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 5: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle ke empat
              ),
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Tambal Ban Suka Suka"),
                  subtitle:new Text("Buka 24 jam"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 6: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle ke empat
              ),
              new ListTile(
                  leading: new Image(image: NetworkImage("https://abdulaziz583.files.wordpress.com/2017/05/134.jpg?w=300&h=200"),width: 100.0,),
                  title: new Text("Tambal Ban Sukron"),
                  subtitle:new Text("Buka jam 06:00-20.00"),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) =>Appku()),
                    );
                  }
                //TODO 7: pada systank di atas adalah pemanggilan image dari sumber tersebut dan kemudian mengisikan title dan subtitle ke lima
              ),
            ]
        )
    );
  }

}
//TODO 8: pada class Home digunakan untuk menampilkan listview dengan judul/title daftar tambal ban terdekat, kemudian erdapat 5 list yang berisikan gambar, nama tambal ban, jam buka & tutup. ketika meng-klik listview tersebut akan berpindah halaman menuju ke class Appku yang berisikan Tabs dengan perintah onTap.

class Appku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Rute'),
          ),
          body: TabBarView(
            children: [
              SnackBarPage(),
              FirstRoute(),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO 9: pada class Appku ini terdapat judul/title Rute yang berisi 2 tabs terdiri dari directions car yang menuju ke class SnackBarPage dan Tabs bike menuju FirstRoute

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
//TODO 10: pada class SnackbarPage berisi sebuah tombol RaisedButton dengan perintah onPressed berisi konten 'Yay! A SnackBar!' dengan actiion SnackBarAction berlaber Undo menggunakan fungsi onPressed, jika mengeklik tombol tersebut.

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
//TODO 11: pada class FirstRoute terdapat tombol RaisedButton berlabel Open route, ketika di klik akan menuju ke class SecondRoute

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context,
              MaterialPageRoute(builder: (context) => Home()),);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
//TODO 12: pada class SecondRoute terdapat tombol RaisedButton berlabel Go back!, ketika di klik akan menuju ke class Home
//            Navigator.pop(context,
//              MaterialPageRoute(builder: (context) => Home()),);

class Tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Aplikasi"),
      ),
      body: Center(
      ),
    );
  }
}
//TODO 13: pada class Tentang hanya menampilkan Tentang Aplikasi.

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Home(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Selamat Datang di Tambal.in AJA'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('TENTANG'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) =>Tentang()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
//TODO 14: pada class MyHomePage berisi 2 pilihan yaitu Home jika di klikk akan menuju Homo dan  TENTANG jika diklik akan menuju ke class Tentang.
}
