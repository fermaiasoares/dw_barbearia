import 'package:dw_barbearia/src/core/core/providers/application_providers.dart';
import 'package:dw_barbearia/src/services/user_register/user_register_adm_service.dart';
import 'package:dw_barbearia/src/services/user_register/user_register_adm_service_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_register_provider.g.dart';

@riverpod
UserRegisterAdmService userRegisterAdmService(UserRegisterAdmServiceRef ref) =>
    UserRegisterAdmServiceImpl(
        userRepository: ref.watch(userRepositoryProvider),
        userLoginService: ref.watch(userLoginServiceProvider));