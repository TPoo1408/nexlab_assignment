// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/login/data/repositories/login_repository.dart' as _i187;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i664;
import '../../utils/preferences/pref_util.dart' as _i56;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc());
    gh.lazySingleton<_i187.LoginRepository>(() => _i187.LoginRepository());
    gh.lazySingleton<_i56.PrefUtil>(() => _i56.PrefUtil());
    gh.factory<_i664.LoginBloc>(
        () => _i664.LoginBloc(gh<_i187.LoginRepository>()));
    return this;
  }
}
