1. Code Repo Url: https://github.com/KiranBabuNekkanti/books-service.git
2. Books service API (Backend Service Docker image url): https://hub.docker.com/layers/kiranbabun/books-service/latest/images/sha256-8a37438137c545ba9a2eabcc491d5fc72d17f2f75e1f041b1b5ffaa547de1651?context=repo
3. postgres-image-url: https://hub.docker.com/_/postgres
4. java 17 image url: https://hub.docker.com/_/openjdk
5. API Endpoints:
   a. End Point to get existing books:
        i. Http Method: GET 
        ii.URL: http://34.93.59.207/v1/books-service/books
   b. End Point to save new books:
        i. Http Method: POST 
        ii.URL: http://34.93.59.207/v1/books-service/books
        iii. Request Body:
            {
               "name": "How to be Happy",
                "author": "Ruskin Bond",
                "price": "299"
            }
 6. Running Demo url: https://nagarro-my.sharepoint.com/:v:/p/kiran-babu_nekkanti/EW5VGmyCoq9HmRLLEuJSHZ8B77zHKQ8ZO4X91i8LoM-5fQ?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=b8Bziv
