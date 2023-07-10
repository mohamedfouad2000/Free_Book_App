// class BookModel {
//   String? kind;
//   num? totalItems;
//   List<Items>? items;

//   BookModel({this.kind, this.totalItems, this.items});

//   BookModel.fromJson(Map<String, dynamic> json) {
//     kind = json['kind'];
//     totalItems = json['totalItems'];
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['kind'] = this.kind;
//     data['totalItems'] = this.totalItems;
//     if (this.items != null) {
//       data['items'] = this.items!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Items {
//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   VolumeInfo? volumeInfo;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;

//   Items(
//       {this.kind,
//       this.id,
//       this.etag,
//       this.selfLink,
//       this.volumeInfo,
//       this.saleInfo,
//       this.accessInfo,
//       this.searchInfo});

//   Items.fromJson(Map<String, dynamic> json) {
//     kind = json['kind'];
//     id = json['id'];
//     etag = json['etag'];
//     selfLink = json['selfLink'];
//     volumeInfo = json['volumeInfo'] != null
//         ? new VolumeInfo.fromJson(json['volumeInfo'])
//         : null;
//     saleInfo = json['saleInfo'] != null
//         ? new SaleInfo.fromJson(json['saleInfo'])
//         : null;
//     accessInfo = json['accessInfo'] != null
//         ? new AccessInfo.fromJson(json['accessInfo'])
//         : null;
//     searchInfo = json['searchInfo'] != null
//         ? new SearchInfo.fromJson(json['searchInfo'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['kind'] = this.kind;
//     data['id'] = this.id;
//     data['etag'] = this.etag;
//     data['selfLink'] = this.selfLink;
//     if (this.volumeInfo != null) {
//       data['volumeInfo'] = this.volumeInfo!.toJson();
//     }
//     if (this.saleInfo != null) {
//       data['saleInfo'] = this.saleInfo!.toJson();
//     }
//     if (this.accessInfo != null) {
//       data['accessInfo'] = this.accessInfo!.toJson();
//     }
//     if (this.searchInfo != null) {
//       data['searchInfo'] = this.searchInfo!.toJson();
//     }
//     return data;
//   }
// }

// class VolumeInfo {
//   String? title;
//   String? subtitle;
//   List<String>? authors;
//   String? publishedDate;
//   List<IndustryIdentifiers>? industryIdentifiers;
//   ReadingModes? readingModes;
//   num? pageCount;
//   String? prnumType;
//   List<String>? categories;
//   String? maturityRating;
//   bool? allowAnonLogging;
//   String? contentVersion;
//   String? language;
//   String? previewLink;
//   String? infoLink;
//   String? canonicalVolumeLink;
//   PanelizationSummary? panelizationSummary;
//   ImageLinks? imageLinks;
//   String? publisher;
//   String? description;

//   VolumeInfo(
//       {this.title,
//       this.subtitle,
//       this.authors,
//       this.publishedDate,
//       this.industryIdentifiers,
//       this.readingModes,
//       this.pageCount,
//       this.prnumType,
//       this.categories,
//       this.maturityRating,
//       this.allowAnonLogging,
//       this.contentVersion,
//       this.language,
//       this.previewLink,
//       this.infoLink,
//       this.canonicalVolumeLink,
//       this.panelizationSummary,
//       this.imageLinks,
//       this.publisher,
//       this.description});

//   VolumeInfo.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     subtitle = json['subtitle'];
//     authors = json['authors'].cast<String>();
//     publishedDate = json['publishedDate'];
//     if (json['industryIdentifiers'] != null) {
//       industryIdentifiers = <IndustryIdentifiers>[];
//       json['industryIdentifiers'].forEach((v) {
//         industryIdentifiers!.add(new IndustryIdentifiers.fromJson(v));
//       });
//     }
//     readingModes = json['readingModes'] != null
//         ? new ReadingModes.fromJson(json['readingModes'])
//         : null;
//     pageCount = json['pageCount'];
//     prnumType = json['prnumType'];
//     categories = json['categories'].cast<String>();
//     maturityRating = json['maturityRating'];
//     allowAnonLogging = json['allowAnonLogging'];
//     contentVersion = json['contentVersion'];
//     language = json['language'];
//     previewLink = json['previewLink'];
//     infoLink = json['infoLink'];
//     canonicalVolumeLink = json['canonicalVolumeLink'];
//     panelizationSummary = json['panelizationSummary'] != null
//         ? new PanelizationSummary.fromJson(json['panelizationSummary'])
//         : null;
//     imageLinks = json['imageLinks'] != null
//         ? new ImageLinks.fromJson(json['imageLinks'])
//         : null;
//     publisher = json['publisher'];
//     description = json['description'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['title'] = this.title;
//     data['subtitle'] = this.subtitle;
//     data['authors'] = this.authors;
//     data['publishedDate'] = this.publishedDate;
//     if (this.industryIdentifiers != null) {
//       data['industryIdentifiers'] =
//           this.industryIdentifiers!.map((v) => v.toJson()).toList();
//     }
//     if (this.readingModes != null) {
//       data['readingModes'] = this.readingModes!.toJson();
//     }
//     data['pageCount'] = this.pageCount;
//     data['prnumType'] = this.prnumType;
//     data['categories'] = this.categories;
//     data['maturityRating'] = this.maturityRating;
//     data['allowAnonLogging'] = this.allowAnonLogging;
//     data['contentVersion'] = this.contentVersion;
//     data['language'] = this.language;
//     data['previewLink'] = this.previewLink;
//     data['infoLink'] = this.infoLink;
//     data['canonicalVolumeLink'] = this.canonicalVolumeLink;
//     if (this.panelizationSummary != null) {
//       data['panelizationSummary'] = this.panelizationSummary!.toJson();
//     }
//     if (this.imageLinks != null) {
//       data['imageLinks'] = this.imageLinks!.toJson();
//     }
//     data['publisher'] = this.publisher;
//     data['description'] = this.description;
//     return data;
//   }
// }

// class IndustryIdentifiers {
//   String? type;
//   String? identifier;

//   IndustryIdentifiers({this.type, this.identifier});

//   IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     identifier = json['identifier'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['type'] = this.type;
//     data['identifier'] = this.identifier;
//     return data;
//   }
// }

// class ReadingModes {
//   bool? text;
//   bool? image;

//   ReadingModes({this.text, this.image});

//   ReadingModes.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['text'] = this.text;
//     data['image'] = this.image;
//     return data;
//   }
// }

// class PanelizationSummary {
//   bool? containsEpubBubbles;
//   bool? containsImageBubbles;

//   PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

//   PanelizationSummary.fromJson(Map<String, dynamic> json) {
//     containsEpubBubbles = json['containsEpubBubbles'];
//     containsImageBubbles = json['containsImageBubbles'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['containsEpubBubbles'] = this.containsEpubBubbles;
//     data['containsImageBubbles'] = this.containsImageBubbles;
//     return data;
//   }
// }

// class ImageLinks {
//   String? smallThumbnail;
//   String? thumbnail;

//   ImageLinks({this.smallThumbnail, this.thumbnail});

//   ImageLinks.fromJson(Map<String, dynamic> json) {
//     smallThumbnail = json['smallThumbnail'];
//     thumbnail = json['thumbnail'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['smallThumbnail'] = this.smallThumbnail;
//     data['thumbnail'] = this.thumbnail;
//     return data;
//   }
// }

// class SaleInfo {
//   String? country;
//   String? saleability;
//   bool? isEbook;
//   String? buyLink;

//   SaleInfo({this.country, this.saleability, this.isEbook, this.buyLink});

//   SaleInfo.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     saleability = json['saleability'];
//     isEbook = json['isEbook'];
//     buyLink = json['buyLink'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country'] = this.country;
//     data['saleability'] = this.saleability;
//     data['isEbook'] = this.isEbook;
//     data['buyLink'] = this.buyLink;
//     return data;
//   }
// }

// class AccessInfo {
//   String? country;
//   String? viewability;
//   bool? embeddable;
//   bool? publicDomain;
//   String? textToSpeechPermission;
//   Epub? epub;
//   Epub? pdf;
//   String? webReaderLink;
//   String? accessViewStatus;
//   bool? quoteSharingAllowed;

//   AccessInfo(
//       {this.country,
//       this.viewability,
//       this.embeddable,
//       this.publicDomain,
//       this.textToSpeechPermission,
//       this.epub,
//       this.pdf,
//       this.webReaderLink,
//       this.accessViewStatus,
//       this.quoteSharingAllowed});

//   AccessInfo.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     viewability = json['viewability'];
//     embeddable = json['embeddable'];
//     publicDomain = json['publicDomain'];
//     textToSpeechPermission = json['textToSpeechPermission'];
//     epub = json['epub'] != null ? new Epub.fromJson(json['epub']) : null;
//     pdf = json['pdf'] != null ? new Epub.fromJson(json['pdf']) : null;
//     webReaderLink = json['webReaderLink'];
//     accessViewStatus = json['accessViewStatus'];
//     quoteSharingAllowed = json['quoteSharingAllowed'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country'] = this.country;
//     data['viewability'] = this.viewability;
//     data['embeddable'] = this.embeddable;
//     data['publicDomain'] = this.publicDomain;
//     data['textToSpeechPermission'] = this.textToSpeechPermission;
//     if (this.epub != null) {
//       data['epub'] = this.epub!.toJson();
//     }
//     if (this.pdf != null) {
//       data['pdf'] = this.pdf!.toJson();
//     }
//     data['webReaderLink'] = this.webReaderLink;
//     data['accessViewStatus'] = this.accessViewStatus;
//     data['quoteSharingAllowed'] = this.quoteSharingAllowed;
//     return data;
//   }
// }

// class Epub {
//   bool? isAvailable;
//   String? downloadLink;
//   String? acsTokenLink;

//   Epub({this.isAvailable, this.downloadLink, this.acsTokenLink});

//   Epub.fromJson(Map<String, dynamic> json) {
//     isAvailable = json['isAvailable'];
//     downloadLink = json['downloadLink'];
//     acsTokenLink = json['acsTokenLink'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['isAvailable'] = this.isAvailable;
//     data['downloadLink'] = this.downloadLink;
//     data['acsTokenLink'] = this.acsTokenLink;
//     return data;
//   }
// }

// class SearchInfo {
//   String? textSnippet;

//   SearchInfo({this.textSnippet});

//   SearchInfo.fromJson(Map<String, dynamic> json) {
//     textSnippet = json['textSnippet'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['textSnippet'] = this.textSnippet;
//     return data;
//   }
// }
