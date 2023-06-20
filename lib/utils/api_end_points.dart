class EndpointRes{
  ///-------------------getApi--------------///
  static const baseUrl = "https://jsonplaceholder.typicode.com/";
  static const photosEndPoint = "${baseUrl}photos";
  static const commentsEndPoint = "${baseUrl}comments";
  static const postsEndPoint = "${baseUrl}posts";
  static const albumsEndPoint = "${baseUrl}albums";
  static const todosEndPoint = "${baseUrl}todos";
  static const usersEndPoint = "${baseUrl}users";


  static const baseUrl1 = "https://dummyjson.com/";
  static const productAPI = '${baseUrl1}products';
  static const addProductAPI = '${baseUrl1}products/add';

  ///-------------------postApi--------------///


     static const baseUrlAuthentication ="https://panchat.in/api/client/";
     static const String signUp = "${baseUrlAuthentication}Register";
     static const String login = "${baseUrlAuthentication}login";


}