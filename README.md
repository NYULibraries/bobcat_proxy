# BobCat proxy

Nginx proxy for load balancing and securing primo servers behind SSL:

```
docker build . -t bobcat_proxy
docker run -p 80:80 bobcat_proxy
# visit http://localhost:80
```