# lb
Testing DNS round robin in Docker 1.11

## 
1. git clone https://github.com/lherrera/lb/
2. docker-compose up -d
4. docker-compose scale server=5
6. docker-compose scale client=2
7. docker-compose logs | grep client_1
8. docker-compose logs | grep client_2
9. docker-compose logs client | grep client_1 | grep PING | sort | uniq -c
10. docker-compose logs client | grep client_1 | grep PING | sort | uniq -c

