import 'package:bookappclean/Core/NewModel/book2_model/book2_model.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';

abstract class HomeRep {
  Future<Book2Model> featherBookList();
  Future<Book2Model> featherBestSallerBookList();
}
