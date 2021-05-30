import 'package:flutter/cupertino.dart';
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
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: ListTile(
                          title: Text("Ürünler"),
                          onTap: () {
                            print('ürünler tikladin');
                            Navigator.pop(context);
                            _controller.animateToPage(3,
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
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: ListTile(
                          title: Text("Müşteri"),
                          onTap: () {
                            print('müşteri tikladin');
                            Navigator.pop(context);
                            _controller.animateToPage(4,
                                duration: Duration(seconds: 1),
                                curve: Curves.easeOut);
                          },
                        ),
                      ),
                      PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: ListTile(
                          title: Text("Müşteri Adres"),
                          onTap: () {
                            print('müşteri adres tikladin');
                            Navigator.pop(context);
                            _controller.animateToPage(5,
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
                  ListTile(
                    title: Center(
                        child: Text('İlçe Tanımlama Ekranı',
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
                              Text('İl Seçiniz:'),
                              const SizedBox(height: 16),
                              MyStatefulWidget(),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'İlçe Kodu:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen İlçe Kodu giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'İlçe Adı:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen İlçe Adı giriniz';
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
            ),
            SingleChildScrollView(
              child: Card(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20, bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Center(
                          child: Text('Ürünler Ekranı',
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
                                    labelText: 'Ürün No:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Ürün No giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Ürün Adı:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Ürün Adı giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Fıyat:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Fiyat giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Ölçek:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Ölçek giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Tedariçi:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Tedarikçi giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Durum:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Durum giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Stok Alt Seviye:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Stok Alt Seviye giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Stok Üst Seviye:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Stok Üst Seviye giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Stok Optimal Seviye:',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Stok Optimal Seviye giriniz';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  readOnly: false,
                                  maxLines: 20,
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.start,
                                  decoration: const InputDecoration(
                                    labelText: 'Açıklama:',
                                    alignLabelWithHint: true,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Lütfen Açıklama giriniz';
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
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Center(
                        child: Text('Müşteri Ekranı',
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
                                  labelText: 'Müşteri No:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Müşteri No giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'Müşteri Adı:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Müşteri Adı giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'Müşteri Alternatif Adı:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Müşteri Alternatif Adı giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'Sorumlu Kişi:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Sorumlu Kişi giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'Ünvanı:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Ünvanı giriniz';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                readOnly: false,
                                decoration: const InputDecoration(
                                  labelText: 'Müşteri Durum:',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen Müşteri Durum giriniz';
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
            ),
          ],
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Adana';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Adana','Adıyaman', 'Afyon', 'Ağrı', 'Amasya', 'Ankara', 'Antalya', 'Artvin',
        'Aydın', 'Balıkesir','Bilecik', 'Bingöl', 'Bitlis', 'Bolu', 'Burdur', 'Bursa', 'Çanakkale',
        'Çankırı', 'Çorum','Denizli','Diyarbakır', 'Edirne', 'Elazığ', 'Erzincan', 'Erzurum ', 'Eskişehir',
        'Gaziantep', 'Giresun','Gümüşhane', 'Hakkari', 'Hatay', 'Isparta', 'Mersin', 'İstanbul', 'İzmir',
        'Kars', 'Kastamonu', 'Kayseri','Kırklareli', 'Kırşehir', 'Kocaeli', 'Konya', 'Kütahya ', 'Malatya',
        'Manisa', 'Kahramanmaraş', 'Mardin', 'Muğla', 'Muş', 'Nevşehir', 'Niğde', 'Ordu', 'Rize', 'Sakarya',
        'Samsun', 'Siirt', 'Sinop', 'Sivas', 'Tekirdağ', 'Tokat', 'Trabzon  ', 'Tunceli', 'Şanlıurfa', 'Uşak',
        'Van', 'Yozgat', 'Zonguldak', 'Aksaray', 'Bayburt ', 'Karaman', 'Kırıkkale', 'Batman', 'Şırnak',
        'Bartın', 'Ardahan', 'Iğdır', 'Yalova', 'Karabük ', 'Kilis', 'Osmaniye ', 'Düzce']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
