part of 'base_bloc.dart';

class BaseState extends Equatable {
 
  final BaseModel ? baseModel; 
  
  const BaseState({
    this.baseModel
  });

  BaseState copyWith({
      BaseModel? baseModel,
  })
  => BaseState(
    baseModel: baseModel?? this.baseModel
  );

  
  @override
  List<Object?> get props => [baseModel];
}


