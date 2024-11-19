import 'package:bloc/bloc.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signIn(String email, String password, String name) async {
    emit(SigninLoading());
    var result = await authRepo.signInWithEmailAndPassword(
      email,
      password,
    );

    result.fold(
      (failure) => emit(SigninFailure(message: 'خطأ غير متوقع')),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) => emit(SigninFailure(message: 'خطأ غير متوقع')),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
