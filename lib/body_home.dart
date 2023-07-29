import 'package:flutter/material.dart';

class Body_home extends StatelessWidget {
  Body_home({
    Key? key,
    required this.Text_titile,
    required this.Text_titile1,
  }) : super(key: key);
  String Text_titile;
  String Text_titile1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Places New You",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 110),
                  child: Text(
                    "Wiew all",
                    style: TextStyle(color: Color.fromARGB(255, 86, 176, 250)),
                  ),
                ),
                Icon(Icons.navigate_next_outlined)
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 380,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ],
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i.mycdn.me/i?r=AzEPZsRbOZEKgBhR0XGMT1RkYIcOX3IcViDo1XtwSnThSKaKTM5SRkZCeTgDn6uOyic")),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Container(
            height: 100,
            width: 380,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 7,
                      color: Colors.grey.shade200)
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Text_titile,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  Row(
                    children: const [
                      Text(
                        "4 room - 6 bedroom - 2 bathroom - Wi - Fi",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "500 MXN",
                        style: TextStyle(
                            color: Color.fromARGB(255, 27, 120, 32),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("/ night")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 380,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://toshvil.uz/uploads/2021/04/tild3866-3136-4239-b034-653839386131charos1.jpg"),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Container(
            height: 100,
            width: 380,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 7,
                      color: Colors.grey.shade200)
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Text_titile1,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                  Row(
                    children: const [
                      Text(
                        "6 room - 7 bedroom - 4 bathroom - Wi - Fi",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "550 MXN",
                        style: TextStyle(
                            color: Color.fromARGB(255, 27, 120, 32),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("/ night")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
