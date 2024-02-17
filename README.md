# Cloud-Shell-Scripts

This project, `cloud-shell-scripts`, includes a set of utility scripts designed to enhance the experience of using [__StackQL__](https://github.com/stackql/stackql) within the native cloud shell environments of AWS, Google Cloud, and Azure. These scripts facilitate seamless integration and interaction with StackQL, enabling users to manage cloud resources across multiple providers more efficiently.

## Features

- **AWS Cloud Shell Script**: Simplifies AWS credentials fetching and role assumption, making StackQL commands execution straightforward.
- **Google Cloud Shell Script**: Leverages StackQL's support for interactive authentication to manage Google Cloud resources with ease.
- **Azure Cloud Shell Script**: Utilizes Azure's default interactive authentication for hassle-free management of Azure resources using StackQL.

## Building and Publishing the Package

1. Ensure the latest StackQL Linux build artifact (`stackql_linux_amd64.zip`) is downloaded into the `bin` directory
2. Execute the `build_package.sh` script to prepare the StackQL package with all necessary scripts:
    ```shell
    sh build_package.sh
    ```
3. Add the resultant `package/stackql_linux_amd64.zip` to a StackQL release in GitHub

## Usage

### AWS Cloud Shell

1. Download the package 
    ```shell
    curl -L https://bit.ly/stackql-zip -O && unzip stackql-zip
    ```
2. Run the AWS script to start using StackQL:
    ```shell
    sh stackql-aws-cloud-shell.sh
    ```

### Google Cloud Shell

1. Download the package 
    ```shell
    curl -L https://bit.ly/stackql-zip -O && unzip stackql-zip
    ```
2. Run the Google Cloud script to begin:
    ```shell
    sh stackql-google-cloud-shell.sh
    ```

### Azure Cloud Shell

1. Download the package 
    ```shell
    curl -L https://bit.ly/stackql-zip -O && unzip stackql-zip
    ```
2. Run the Azure script to begin:
    ```shell
    sh stackql-azure-cloud-shell.sh
    ```

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

## License

Distributed under the MIT License. See `LICENSE` for more information.