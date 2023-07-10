// import 'package:bookappclean/Feature/home/domain/entity/bookentity.dart';

import 'item.dart';

class Book2Model  {
  String? kind;
  num? totalItems;
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
