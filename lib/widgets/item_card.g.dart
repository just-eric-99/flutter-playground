// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCard _$ItemCardFromJson(Map<String, dynamic> json) => ItemCard(
      img: json['img'] as String,
      title: json['title'] as String,
      price: json['price'] as String,
      schedule: json['schedule'] as String,
    );

Map<String, dynamic> _$ItemCardToJson(ItemCard instance) => <String, dynamic>{
      'img': instance.img,
      'title': instance.title,
      'price': instance.price,
      'schedule': instance.schedule,
    };
