// import 'package:bookappclean/Feature/home/domain/entity/bookentity.dart';

import 'package:hive/hive.dart';

import 'item.dart';
// import 'package:flutter/material.dart';
part 'book2_model.g.dart';
@HiveType(typeId: 0)
class Book2Model extends HiveObject {
  @HiveField(0)
  String? kind;
  @HiveField(1)
  num? totalItems;
  @HiveField(2)
  List<Item>? items;

  Book2Model({this.kind, this.totalItems, this.items});

  factory Book2Model.fromJson(Map<String, dynamic> json) => Book2Model(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as num?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
