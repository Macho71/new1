import 'dart:math';

import 'package:flutter/material.dart';

class Yangi extends StatefulWidget {
  const Yangi({super.key});

  @override
  State<Yangi> createState() => _YangiState();
}

class _YangiState extends State<Yangi> {
  List _images = [
    "https://teletype.in/files/6d/6d4102a3-4d85-4d87-960e-3ada25dd198f.jpeg",
    "https://e7.pngegg.com/pngimages/401/773/png-clipart-telephone-call-mobile-phones-call-centre-telephone-number-telefono-telephone-call-home-business-phones.png",
    "https://etimg.etb2bimg.com/photo/94608524.cms",
    "https://arenamotosikal.com/wp-content/uploads/2021/02/QJ-Motor-350cc-Sport-Bike-001.jpeg",
  ];

  var _information = [
    {
      "image":
          "https://teletype.in/files/6d/6d4102a3-4d85-4d87-960e-3ada25dd198f.jpeg",
      "text":
          "Maʼlumki, 1993-yil 29-dekabr kuni Oʻzbekiston Respublikasining Qonuniga binoan “14-yanvar — Vatan himoyachilari kuni” deb eʼlon qilindi.",
      "time": "20:55",
      "visib": "1200"
    },
    {
      "image":
          "https://e7.pngegg.com/pngimages/401/773/png-clipart-telephone-call-mobile-phones-call-centre-telephone-number-telefono-telephone-call-home-business-phones.png",
      "text":
          "Uyali telefon, qoʻl telefon — simsiz telefon turi. Har bir abonent (uyali telefon apparati).",
      "time": "12:05",
      "visib": "354"
    },
    {
      "image": "https://etimg.etb2bimg.com/photo/94608524.cms",
      "text":
          "Tesla Motors (hozirda Tesla, Inc.) kompaniyasi 2003-yil 1-iyulda Martin Eberhard va Marc Tarpenning  ",
      "time": "10:35",
      "visib": "11009900"
    },
    {
      "image":
          "https://arenamotosikal.com/wp-content/uploads/2021/02/QJ-Motor-350cc-Sport-Bike-001.jpeg",
      "text":
          "Motosikal sport peringkat permulaan dibina bagi memperkenalkan penunggang . ",
      "time": "7:85",
      "visib": "2090"
    }
  ];
  int max = 0;
  int _index = 0;
  List<int> ab = [];
  int _Loop() {
    for (int i = 0; i < _information.length; i++) {
      ab.add(int.parse(_information[i]["visib"].toString()));
    }
    for (int i = 0; i < ab.length; i++) {
      if (max < ab[i]) {
        max = ab[i];
        _index = i;
      }
    }
    print(_index);

    return _index;
  }

  bool _result = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: newMethodbutton(),
      appBar: AppBar(
        title: const Text("Yangiliklar"),
      ),
      body: newMethod(_result),
    );
  }

  FloatingActionButton newMethodbutton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          if (_result == false) {
            newMethod(_result);
            _result = true;
          } else {
            newMethod(_result);
            _result = false;
          }
        });
        print(_result);
      },
    );
  }

  ListView newMethod(bool _result) {
    return ListView.builder(
        itemCount: _result ? _information.length : 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 500,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 236, 236),
                  boxShadow: [BoxShadow(blurRadius: 1)]),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 430,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: _result
                              ? NetworkImage(_images[index])
                              : NetworkImage(_images[_Loop()]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        " || MAHALLIY",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          _result
                              ? _information[index]["text"].toString()
                              : _information[_Loop()]["text"].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_result
                            ? "Bugun, ${_information[index]["time"].toString()}"
                            : "Bugun, ${_information[_Loop()]["time"].toString()}"),
                        Row(
                          children: [
                            const Icon(Icons.visibility),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(_result
                                ? _information[index]["visib"].toString()
                                : _information[_Loop()]["visib"].toString())
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
        });
  }
}
