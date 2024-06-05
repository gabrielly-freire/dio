# Módulo 1: Introdução ao Linux

## Acesso remoto a máquinas Linux

### Preparação da máquina

O serviço `openssh-server` precisa ser instalado para a permisão do acesso remoto. Assim, é preciso fazer a instalação com o comando abaixo:

```bash
sudo apt-get install openssh-server
```

O comando `ip a` é usado para exibir o ip da máquina como isso será possível o acesso remoto.

### Windows

No windows é preciso fazer a instalação do [putty](https://www.putty.org/). A partir disso é possível acessar a máquina linux no windows prenchendo algumas informações como o endereço IP da máquina, a porta que por padrão é a 22 (porta padrão de acesso remoto) e seleciona a opção "SSH".

### Linux

Para acessar remotamento a máquina remotamente basta usar o seguinte comando:

```bash
ssh nome-usuario@endereco-ip
```

Após executar o comando é só inserir a senha e ter acesso a máquina.

## Comandos

- `reboot` - reiniciar
- `shutdown $tempo$` - desligar o so depois de um tempo
