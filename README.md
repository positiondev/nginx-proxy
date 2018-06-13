# nginx-proxy

nginx config for Folio splits

## Deployment

Circle CI [is configured](https://github.com/positiondev/nginx-proxy/blob/master/circle.yml) to create and push Docker images from the `master` branch. To integrate it with Folio, update the `nginx-proxy` tag found in [`Dockerrun.aws.json.template`](https://github.com/positiondev/folio/blob/master/Dockerrun.aws.json.template
).

## Testing

### Manual testing

1. Build the image:

    ```
    docker build . --tag nginx-proxy:development
    ```

2. Start the server:

    ```
    docker run -p 8080:80 --rm --interactive --tty nginx-proxy:development
    ```

3. You can now use utilities like `curl` to test its behavior, for example:

    ```
    curl --header 'Host: haymarketbooks.org' --head localhost:8080/
    HTTP/1.1 302 Moved Temporarily
    Server: nginx/1.10.3
    Date: Wed, 13 Jun 2018 18:43:20 GMT
    Content-Type: text/html
    Content-Length: 161
    Connection: keep-alive
    Location: https://www.haymarketbooks.org/
    ```
