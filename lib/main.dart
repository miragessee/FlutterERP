import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This is the type used by the popup menu below.
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barış ARSLAN Tez',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Barış ARSLAN Tez'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WhyFarther? _selection;

  // create a PageController
  final _controller = PageController();
  bool _shouldAnimate = true; // whether we animate or jump

  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    double orjWidth = MediaQuery.of(context).size.width;
    //double cameraWidth = orjWidth/24;
    //double tabWidth = (orjWidth - cameraWidth)/4;
    double tabWidth = orjWidth / 3;

    print(orjWidth);
    print(tabWidth);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child:
                  const Text('Küçük ve Orta Boy İşletmeler İçin ERP Sistemi')),
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.white,
            automaticIndicatorColorAdjustment: false,
            tabs: <Widget>[
              Tab(
                text: 'Tanımlamalar',
              ),
              Tab(
                text: 'Veri Girişi',
              ),
              Tab(
                text: 'Raporlar',
              ),
              // Tab(
              //   text: 'Window',
              // ),
            ],
            onTap: (index) {
              print(index);

              if (index == 0) {
                showMenu(
                    context: context,
                    position: RelativeRect.fromSize(
                        Rect.fromLTRB(0, 100, 0, 0), Size.infinite),
                    items: <PopupMenuEntry<WhyFarther>>[
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: ListTile(
                          title: Text("İller"),
                          onTap: () {
                            print('iller tikladin');
                            Navigator.pop(context);
                            _controller.animateToPage(1,
                                duration: Duration(seconds: 1),
                                curve: Curves.easeOut);
                          },
                        ),
                      ),
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: ListTile(
                          title: Text("İlçeler"),
                          onTap: () {
                            print('ilçeler tikladin');
                            Navigator.pop(context);
                            _controller.animateToPage(2,
                                duration: Duration(seconds: 1),
                                curve: Curves.easeOut);
                          },
                        ),
                      ),
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: const Divider(
                          height: 10,
                          thickness: 5,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.tradingCharter,
                        child: Text('Ürünler'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Müşteri'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Müşteri Adres'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Tedarikçiler'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Tedarikçi Adres'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Müşteri Mali Bilgileri'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Tedarikçi Mali Bilgileri'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Ölçekler'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Durumlar'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Çıkış'),
                      ),
                    ]);
              } else if (index == 1) {
                showMenu(
                    context: context,
                    position: RelativeRect.fromSize(
                        Rect.fromLTRB(tabWidth, 100, 0, 0), Size.infinite),
                    items: <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: Text('Stok Girişi'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.smarter,
                        child: Text('Stok Çıkışı'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.tradingCharter,
                        child: Text('Satınalmalar'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Satışlar'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('--------------'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Tahsilatlar'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Ödemeler'),
                      ),
                    ]);
              } else if (index == 2) {
                showMenu(
                    context: context,
                    position: RelativeRect.fromSize(
                        Rect.fromLTRB(tabWidth * 2, 100, 0, 0), Size.infinite),
                    items: <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: Text('Ürün Sorgulama'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.smarter,
                        child: Text('Stok Giriş Raporu'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Stok Çıkış Raporu'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.tradingCharter,
                        child: Text('Satınalma-Ödemeler'),
                      ),
                    ]);
              }
            },
          ),
          // actions: <Widget>[
          //   PopupMenuButton<WhyFarther>(
          //     onSelected: (WhyFarther result) {
          //       setState(() {
          //         _selection = result;
          //       });
          //     },
          //     itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          //       const PopupMenuItem<WhyFarther>(
          //         value: WhyFarther.harder,
          //         child: Text('Working a lot harder'),
          //       ),
          //       const PopupMenuItem<WhyFarther>(
          //         value: WhyFarther.smarter,
          //         child: Text('Being a lot smarter'),
          //       ),
          //       const PopupMenuItem<WhyFarther>(
          //         value: WhyFarther.selfStarter,
          //         child: Text('Being a self-starter'),
          //       ),
          //       const PopupMenuItem<WhyFarther>(
          //         value: WhyFarther.tradingCharter,
          //         child: Text('Placed in charge of trading charter'),
          //       ),
          //     ],
          //   )
          // ],
        ),
        // body: TabBarView(
        //   children: [
        //     Icon(Icons.directions_car),
        //     Icon(Icons.directions_transit),
        //     Icon(Icons.directions_bike),
        //   ],
        // ),
        body: PageView(
          controller: _controller, // assign it to PageView
          children: <Widget>[
            Text(''), // iller ilk sayfasi, boş
            Card(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Center(
                        child: Text('İl Tanımlama Ekranı',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                              left: 20.0, right: 20.0),
                          child: Column(
                            children: [
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'İl Kodu:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen İl Kodu giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'İl Adı:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen İl Adı giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                style: style,
                                onPressed: () {},
                                child: const Text('Kaydet'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), // iller dolu sayfasi
            Card(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('dumancore'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ), // page2
          ],
        ),
      ),
    );
  }
}
