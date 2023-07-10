
import 'package:bookappclean/Core/NewModel/book2_model/book2_model.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Feature/home/data/repo/home_rep.dart';

class FetchbestSallerBook{
final HomeRep ? homeRep;

  FetchbestSallerBook(this.homeRep);

Future<Book2Model>?  call(){
  return homeRep ?.featherBestSallerBookList();
}

}