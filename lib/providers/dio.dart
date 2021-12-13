import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final Dio dio = Dio(BaseOptions(
  baseUrl: "https://api.brawlstars.com/v1/",
  connectTimeout: 10000,
  receiveTimeout: 5000,
  
));

final dioProvider = Provider<Dio>((ref){
  dio.interceptors.clear();
  const token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImQ3YmMwNTdjLTA2ZjctNGNlYi05MDI1LTExMDBmMzE5YThmNSIsImlhdCI6MTYzODk0OTU2Miwic3ViIjoiZGV2ZWxvcGVyLzM3NGZkYzY1LTcyYWEtZjg3Yi1jM2YyLWJjZTEzNzdkY2JiNSIsInNjb3BlcyI6WyJicmF3bHN0YXJzIl0sImxpbWl0cyI6W3sidGllciI6ImRldmVsb3Blci9zaWx2ZXIiLCJ0eXBlIjoidGhyb3R0bGluZyJ9LHsiY2lkcnMiOlsiNzcuMTI4LjE1My4yMzAiLCIxNzYuMTc5LjE0Mi4yMzgiXSwidHlwZSI6ImNsaWVudCJ9XX0.PiNVzCuaAb6f0t1tAN0vmEjdrhOrkr4G4xl82DT-BHh5ibajsWSFxHN_iNfKw79nG7KYfmebM75YPY9h4zrUAg";
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

