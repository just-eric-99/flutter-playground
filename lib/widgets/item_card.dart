import 'package:flutter/material.dart';
import 'package:flutter_playground/utils/const.dart';

class ItemCard extends StatefulWidget {
  final String img;
  final String title;
  final String price;
  final String schedule;

  const ItemCard({
    Key? key,
    required this.img,
    required this.title,
    required this.price,
    required this.schedule,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  dynamic precacheImageImg;
  @override
  Widget build(BuildContext context) {
    precacheImageImg = precacheImage(Image.network(widget.img).image, context);
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: SizedBox(
        height: 180,
        width: 200,
        child: Card(
          borderOnForeground: false,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        child: Image.network(
                          widget.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6.0,
                      right: 6.0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 4.0,
                      left: 4.0,
                      child: Card(
                        color: Colors.black12,
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.price,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
                    // Positioned(
                    //   top: 6.0,
                    //   left: 6.0,
                    //   child: Card(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(3.0)),
                    //     child: const Padding(
                    //       padding: EdgeInsets.all(4.0),
                    //       child: Text(
                    //         " OPEN",
                    //         style: TextStyle(
                    //           fontSize: 10.0,
                    //           color: Colors.green,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 7.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
              ),
              // const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    widget.schedule,
                    style: const TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.50),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(2.0),
              //   child: SizedBox(
              //     width: MediaQuery
              //         .of(context)
              //         .size
              //         .width,
              //     child: Text(
              //       widget.address,
              //       style: const TextStyle(
              //         fontSize: 12.0,
              //         fontWeight: FontWeight.w300,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
