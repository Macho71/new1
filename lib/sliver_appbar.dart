import 'package:flutter/material.dart';
class Sliver_appbar extends StatelessWidget {
  const Sliver_appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.33,
      leadingWidth: MediaQuery.of(context).size.width * 0.23,
      leading: const Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://www.nicepng.com/png/detail/73-733917_smiling-man-png-photo-person-smiling-png.png"),
          radius: 40,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://spb-pegast.ru/assets/images/country/goa-3.jpg",
          fit: BoxFit.fill,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.widgets),
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hi Marcelo",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text("Find the best place here",
              style:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size(
            double.infinity, MediaQuery.of(context).size.height * 0.2),
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: "What are you looking for?",
                fillColor: Colors.white,
                suffixIcon: Container(
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 76, 99, 76),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

