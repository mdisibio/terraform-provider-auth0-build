# terraform-provider-auth0-build

This repository eases building the auth0 terraform provider [terraform-provider-auth0](https://github.com/mdisibio/terraform-provider-auth0).  It does not require a Go build environment to be installed on the host computer, instead using docker-compose to cross-compile with a golang container.  The resulting executables are placed in the ./bin/ folder.

## Usage

1. Clone this repository and the provider repositories

    ```
    git clone https://github.com/mdisibio/terraform-provider-auth0-build.git
    cd terraform-provider-auth0-build
    ./clone.sh
    ```

2. Build the provider. The resulting executables will be in the ./bin/ folder.
    
    ```
    docker-compose run build
    ```

3. Build and install the provider onto your host for immediate usage (useful to test changes locally).

   OSX

    ```
    ./build.sh
    ```

## Testing
Acceptance tests can be run by first exporting your Auth0 credentials and then targetting the `test` service. Note - This will create (and then destroy) real resources in your Auth0 account.

```
export AUTH0_DOMAIN=<your domain>
export AUTH0_CLIENT_ID=<your client id>
export AUTH0_CLIENT_SECRET=<your client secret>

docker-compose run test
```
