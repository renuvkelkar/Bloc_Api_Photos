import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_photos/Model/PhotoData.dart';
import 'package:bloc_photos/Repository/photos_repository.dart';
import 'package:equatable/equatable.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotoRepository photoRepository;
  late List<PhotoClass>photos;

  PhotosBloc(this.photoRepository) : super(PhotosLoading()) {



    on<PhotosEvent>((event, emit) async{
      emit(PhotosLoading());
      try {
        final photos = await photoRepository.getPhotosData();
        emit(PhotosSuccess(photos));
      } catch (e) {
        emit(PhotosError(e.toString()));
      }
    });
  }}
      // if(event is PhotosEvent){
      //   emit(PhotosLoading());
      //
      // }else if(event is PhotosSuccess){
      //
      //   photos = await photoRepository.getPhotosData();
      //   emit(PhotosSuccess(photos));

      // }else{
      //   emit(PhotosError(error: "Error is there"));
      // }
//
//     });
//   }
// }
