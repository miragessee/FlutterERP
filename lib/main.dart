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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
          title: Center(child: const Text('Küçük ve Orta Boy İşletmeler İçin ERP Sistemi')),
          bottom: TabBar(
            indicatorColor: Colors.blue,
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
                showMenu(context: context, position: RelativeRect.fromSize(Rect.fromLTRB(0, 100, 0, 0), Size.infinite), items: <PopupMenuEntry<WhyFarther>>[
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.harder,
                    child: Text('İller'),
                  ),
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.smarter,
                    child: Text('İlçeler'),
                  ),
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.selfStarter,
                    child: Text('--------------'),
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
                showMenu(context: context, position: RelativeRect.fromSize(Rect.fromLTRB(tabWidth, 100, 0, 0), Size.infinite), items: <PopupMenuEntry<WhyFarther>>[
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
                showMenu(context: context, position: RelativeRect.fromSize(Rect.fromLTRB(tabWidth*2, 100, 0, 0), Size.infinite), items: <PopupMenuEntry<WhyFarther>>[
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
      ),
    );
  }
}
