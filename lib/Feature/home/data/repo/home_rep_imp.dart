// // ignore_for_file: body_might_complete_normally_nullable, non_constant_identifier_names
// import 'package:bookapp/Core/utils/network/remote/dio_helper.dart';
// import 'package:bookapp/Feature/home/data/Model/book_model.dart';
// import 'package:bookapp/Feature/home/data/repo/home_rep.dart';

// class HomeRepImp implements HomeRep {
//   @override
//   Future< BookModel ?> featherBestSallerBookList() async {
//     BookModel BestSallerBook;
//     DioHelper.getData(
//             url: 'volumes',
//             query: {'q': 'subject:programming', 'Sorting': 'newest '})
//         .then((value) {
//       BestSallerBook = BookModel.fromJson(value.data);
//       return BestSallerBook;
//     }).catchError((onError) {
//     });
//     //  return aw BestSallerBook;
//   }

//   @override
//   Future<BookModel> featherBookList() async {
//     BookModel? BookList;
//     DioHelper.getData(url: 'volumes', query: {'q': 'computer science'})
//         .then((value) {
//       BookList = BookModel.fromJson(value.data);
//       return BookList;
//     }).catchError((onError) {
//       return null;
//     });
//   }
// }
