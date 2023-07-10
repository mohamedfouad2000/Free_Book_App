 import 'package:bookappclean/Feature/home/domain/entity/bookentity.dart';

abstract class LocalDataSource{
Future<List<Bookentity>>  fetchFeaturedBook();
Future<List<Bookentity>> fetchbestSallerBook();
 }
 class LocalDataSourceImp extends LocalDataSource{
  @override
  Future<List<Bookentity>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }
 
  @override
  Future<List<Bookentity>> fetchbestSallerBook() {
    // TODO: implement fetchbestSallerBook
    throw UnimplementedError();
  }


 }