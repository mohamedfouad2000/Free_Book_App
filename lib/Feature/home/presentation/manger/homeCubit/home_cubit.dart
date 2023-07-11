import 'package:bookappclean/Core/NewModel/book2_model/book2_model.dart';
import 'package:bookappclean/Core/const.dart';
// import 'package:bookappclean/Core/NewModel/book2_model/item.dart';
import 'package:bookappclean/Core/utils/network/remote/dio_helper.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
  Book2Model? booklist;

  Future<void> featherBookList() async {
    print("object ya man");
    // ignore: unused_local_variable
    var hivbox=Hive.box(kNotebook);
    emit(GetBookListLoading());
    DioHelper.getData(
            url: 'volumes',
            query: {'q': 'subject:programming', 'Sorting': 'newest '})
        .then((value) {
      print("object ya man");
      print(value.data);
    hivbox.add(value);


      booklist = Book2Model.fromJson(value.data);
      // print("Aha AAAAAAAAAAAAAAA");
      // print(booklist!.kind);
      emit(GetBookListSucc());

      // ignore: body_might_complete_normally_catch_error
    }).catchError((e) {
      // print(e);
      // print("object ya man ya fager ");


      emit(GetBookListError());
    });
  }

  Book2Model? bestSallerBook;

  Future<void> featherbestSallerBookList() async {
    emit(GetBbestSallerBookLoading());
    DioHelper.getData(url: 'volumes', query: {
      'q': 'Computer Science',
      'Filtering': 'free-ebooks',
      'Sorting': 'newest ',
    }).then((value) {
      print("object mohamed abdo ");
      print(value.data);
      bestSallerBook = Book2Model.fromJson(value.data);
      print("object is best Saller is ${bestSallerBook!.kind}");
      emit(GetBbestSallerBookSucc());
      // ignore: body_might_complete_normally_catch_error
    }).catchError((e) {
      print("e is $e");
      emit(GetBbestSallerBookError());
    });
  }

  Book2Model? searchList;
  void searchFun({required String i}) {
    searchList = null;
    emit(GetBSearchListBooksLoading());
    DioHelper.getData(url: 'volumes', query: {
      'q': i,
      'Filtering': 'free-ebooks',
      'Sorting': 'newest ',
    }).then((value) {
      print("object from Searching ");
      print(value);
  searchList =Book2Model.fromJson(value.data);
      emit(GetBSearchListBooksSucc());

// searchList!.add(Items.fromJson(value.data['items']));
      print("object");
    }).catchError((onError) {
      // ignore: avoid_print
      print(onError);
      emit(GetBSearchListBooksError());
    });
  }
}
