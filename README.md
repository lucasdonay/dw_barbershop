# Dart Week Barber Shop - Flutter

## Descrição do Projeto

Este repositório contém o código-fonte de um aplicativo desenvolvido durante a Dart Week 11. O objetivo do projeto é criar um aplicativo de agendamento de horários em barbearias, proporcionando uma maneira conveniente para os clientes agendarem seus cortes de cabelo.

## Screens

## Visão do Administrador

<div align="center" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center; align-content: center; gap: 10px;">
    <img src="screens/adm_01.png" width="200px" height="400px">
    <img src="screens/adm_02.png" width="200px" height="400px">
    <img src="screens/adm_03.png" width="200px" height="400px">
    <img src="screens/adm_04.png" width="200px" height="400px">
    <img src="screens/adm_05.png" width="200px" height="400px">
    <img src="screens/adm_06.png" width="200px" height="400px">
    <img src="screens/adm_07.png" width="200px" height="400px">
    <img src="screens/adm_08.png" width="200px" height="400px">
    <img src="screens/adm_09.png" width="200px" height="400px">
</div>

## Visão do Colaborador

<div align="center" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center; align-content: center; gap: 10px;">
    <img src="screens/colab_01.png" width="200px" height="400px">
    <img src="screens/colab_03.png" width="200px" height="400px">
    <img src="screens/colab_04.png" width="200px" height="400px">
    <img src="screens/colab_05.png" width="200px" height="400px">
</div>

## Como rodar a aplicação

### Pré-requisitos

- [Dart](https://dart.dev/get-dart)
- [Flutter](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio)
- [VSCode](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

### Rodando a aplicação Front

```bash
# Clone este repositório
$ git clone https://github.com/lucasdonay/dw_barbershop.git

# Acesse a pasta do projeto no terminal/cmd
$ cd dw_barbershop

# Instale as dependências
$ flutter pub get

# Execute a aplicação em modo de desenvolvimento
$ flutter run
```
### Rodando a aplicação backend json_rest_server

```bash
# Rode o comando abaixo no cmd dentro da pasta
$ json_rest_server

# Lembre-se de alterar o ip gerado em RestClient
  RestClient()
      : super(BaseOptions(
            baseUrl: 'http://seuip:8080/',
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10))) 

```


### Tecnologias utilizadas:

- Dart 3.0
- Flutter 3.13
- Riverpod gerenciador de estados

## Licença

Este projeto esta sobe a licença MIT. Consulte a [LICENÇA](LICENSE) para saber mais.
