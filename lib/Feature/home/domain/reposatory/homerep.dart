import 'package:bookappclean/Feature/home/domain/entity/bookentity.dart';

abstract class HomeRepo{
Future<List<Bookentity>>  fetchFeaturedBook();
Future<List<Bookentity>> fetchbestSallerBook();
}