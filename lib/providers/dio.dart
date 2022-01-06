import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final Dio dio = Dio(BaseOptions(
  baseUrl: "https://api.brawlstars.com/v1/",
  connectTimeout: 100000,
  receiveTimeout: 500000,
  
));

final dioProvider = Provider<Dio>((ref){
  dio.interceptors.clear();
  const token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjVhYzAzMTY1LWUyNjgtNGUwZS1hOGI2LWI4ZWQ1MjhkZDlkYiIsImlhdCI6MTY0MTUwMjEwOCwic3ViIjoiZGV2ZWxvcGVyLzRjNzgxNGVkLTkxZjItMzM5NC04ZGJjLWU4ZWYzNjIwMTZhZSIsInNjb3BlcyI6WyJicmF3bHN0YXJzIl0sImxpbWl0cyI6W3sidGllciI6ImRldmVsb3Blci9zaWx2ZXIiLCJ0eXBlIjoidGhyb3R0bGluZyJ9LHsiY2lkcnMiOlsiOTIuMTg4LjE0MC4xMTYiXSwidHlwZSI6ImNsaWVudCJ9XX0.1lUmepXb-AnzAHemAPPmP4VRyLyJtA2iq4W8gN7gbnBxIwB9uUH8acfdU0udOIJNn692RqpgLvwm93rJ0o2FNw";
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

