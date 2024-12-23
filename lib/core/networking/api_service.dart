import 'package:dio/dio.dart';
import 'package:dochealth_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/signup/data/models/sign_up_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.apiLogin)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,);

  @POST(ApiConstants.apiRegister)
  Future<SignupResponse> signup(
      @Body() SignupRequestBody signupRequestBody,);

}