import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final Dio dio = Dio(BaseOptions(
  baseUrl: "https://api.brawlstars.com/v1/",
  connectTimeout: 10000,
  receiveTimeout: 5000,
  
));

final dioProvider = Provider<Dio>((ref){
  dio.interceptors.clear();
  const token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImIyYTk4OWY0LTcyMTctNDc5NC1iZGRiLThlYzJjZWZkZDVlMCIsImlhdCI6MTYzOTU3MjczOCwic3ViIjoiZGV2ZWxvcGVyLzM3NGZkYzY1LTcyYWEtZjg3Yi1jM2YyLWJjZTEzNzdkY2JiNSIsInNjb3BlcyI6WyJicmF3bHN0YXJzIl0sImxpbWl0cyI6W3sidGllciI6ImRldmVsb3Blci9zaWx2ZXIiLCJ0eXBlIjoidGhyb3R0bGluZyJ9LHsiY2lkcnMiOlsiNzcuMTMwLjE1My4xOTYiLCIxNzYuMTc5LjEzNi4yOSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.r-7FOv2nYZtNwdq841Iratg2Tztvm_30WDBIRYMZPPMmdIuIXcp7H0AnPqQ7ytikYd0BU454U0EU5eVsJN4v5g";
  dio.interceptors.add(InterceptorsWrapper(
    onRequest:(options, handler){
     // Do something before request is sent
     options.headers["Authorization"]= "Bearer " + token;
     return handler.next(options); 
    },
    onResponse:(response,handler) {
     // Do something with response data
     return handler.next(response); // continue
    },
    onError: (DioError e, handler) {
     // Do something with response error
     return  handler.next(e);//continue 
    }
));
  return dio;
});

