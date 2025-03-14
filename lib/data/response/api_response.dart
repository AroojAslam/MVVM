import 'package:mvvm/data/response/app_enum.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.complete() : status = Status.COMPLETE;

  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Data: $data \n Message $message";
  }
}
