import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final Dio dio = Dio(BaseOptions(
  baseUrl: "https://api.brawlstars.com/v1/",
  connectTimeout: 100000,
  receiveTimeout: 500000,
  
));

final dioProvider = Provider<Dio>((ref){
  dio.interceptors.clear();
  const token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjFiNmZkZTMzLThjZTYtNGI5Mi05M2JjLWMyYWE0MWY0NzZhYiIsImlhdCI6MTYzOTU4MDcwMCwic3ViIjoiZGV2ZWxvcGVyLzM3NGZkYzY1LTcyYWEtZjg3Yi1jM2YyLWJjZTEzNzdkY2JiNSIsInNjb3BlcyI6WyJicmF3bHN0YXJzIl0sImxpbWl0cyI6W3sidGllciI6ImRldmVsb3Blci9zaWx2ZXIiLCJ0eXBlIjoidGhyb3R0bGluZyJ9LHsiY2lkcnMiOlsiMTc2LjE3OS4xNTguMTg4IiwiNzcuMTMwLjEyNC4yMTEiXSwidHlwZSI6ImNsaWVudCJ9XX0.-xNS5pb1cPJ2rNdeforIQCfjH_9XxjEv-On3ZmcewWnDAhHt6UvGRMIKuSXIFclDY-h3RtKGG5pDU86U48NGVg";
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

