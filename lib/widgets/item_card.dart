import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_playground/utils/const.dart';
part 'item_card.g.dart';

@JsonSerializable()
class ItemCard extends StatefulWidget {
  final String img;
  final String title;
  final String price;
  final String schedule;

  ItemCard({
    required this.img,
    required this.title,
    required this.price,
    required this.schedule,
  });

  @override
  State<StatefulWidget> createState() => _ItemCardState();

  factory ItemCard.fromJson(Map<String, dynamic> json) => _$ItemCardFromJson(json);

  Map<String, dynamic> toJson() => _$ItemCardToJson(this);
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
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
                        child: CachedNetworkImage(
                          placeholder: (context, url) => const Center(
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: CircularProgressIndicator(
                                color: Colors.black26,
                              ),
                            ),
                          ),
                          imageUrl: widget.img,
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
                    ),
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
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
