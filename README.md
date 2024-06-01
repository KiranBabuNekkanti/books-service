Code Repo Url: https://github.com/KiranBabuNekkanti/books-service.git
books-service-api (Backend ServiceDocker image url): https://hub.docker.com/layers/kiranbabun/books-service/latest/images/sha256-680f22ce90d2738e2a0e0556f4de2f2439d955f10eb98e982de9a9bf3ec50f75?context=repo
postgres-image-url: https://hub.docker.com/_/postgres
java 17 image url: https://hub.docker.com/_/openjdk
API Endpoints:
End Point to get existing books:
   Http Method: GET 
   URL: http://34.93.59.207/v1/books-service/books
End Point to save new books:
   Http Method: POST 
   URL: http://34.93.59.207/v1/books-service/books
   Request Body:
     {
        "name": "How to be Happy",
        "author": "Ruskin Bond",
        "price": "299"
     } 
