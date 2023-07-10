import 'package:bookappclean/Feature/home/domain/entity/bookentity.dart';

abstract class RemoteDataSource {
  Future<List<Bookentity>> fetchFeaturedBook();
  Future<List<Bookentity>> fetchbestSallerBook();
}

class RemoteDataSourceImp extends RemoteDataSource{
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