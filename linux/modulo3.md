# Módulo 3: Gerenciamento de pacotes e disco no Linux

## Gerenciamento de pacotes no Linux

### Gerenciamento de pacotes (UBUNTU-DEBIAN)

O `apt-get` e `apt` são gerenciadores de pacotes baseados de distribuições Linux baseadas no Debian. O apt é uma versão mais recente do apt-get, sendo mais amigável para o usuário.

- `apt list` - lista pacotes com base em nomes de pacotes
- `apt search pacote` - pesquisa pacotes
- `apt install pacote`
- `apt remove pacote`
- `apt update` - atualiza a lista de pacotes disponíveis nos repositórios configurados.
- `apt upgrade` - atualiza os pacotes instalados para as versões mais recentes conforme a lista atualizada de pacotes.
  - tem que usar o `apt update` antes.
  
### Descompactadores

- `unzip`
- `unrar`

### Gerenciamento de pacotes (FEDORA RED HAT CenTOS)

o `yum` e `dnf` são gerenciadores de pacotes baseados de distribuições Linux baseadas no Fedora, sendo que o primeiro é mais amigável.

### Realizando a instalação de arquivos DEB

- `apt install ./arquivo.deb`

## Gerenciamento de disco no Linux

- `lsblk` - lista os disco disponíveis no computador
- `fdisk -l` - lista os disco disponíveis no computador
- `fdisk /dev/sdb` -  particionando o disco
- `mkfs.ext4 /dev/sdb` - formatar disco
- Montando disco

```bash
root@servidor1:~# cd /mnt
root@servidor1:/mnt# mkdir disco2
root@servidor1:/mnt# mount /dev/sdb /mnt/disco2
```

Tudo que for salvo do diretório vai ser salvo no disco.
Vale ressaltar que o /mnt é o padrão, mas pode montar em outros diretórios

- `mount /dev/sdb /mnt/disco` - monta o disco
- `umount /dev/sdb` - demonta o disco
- `/etc/fstab` - armazena a configuração de quais dispositivos devem ser montados e qual o ponto de montagem de cada um na carga do sistema operacional

## Copiando arquivos e manipulando processos

- `cp diretorio-de-origem/arquivo diretorio-destino`
  - se já estiver na origem basta especificar o arquivo (./arquivo)
  - `-i` - pergunta se pode sobpor o arquivo
  - `-r` - copia tudo inclusive os diretórios
  - `-v` - mostra o que está fazendo no momento
- `mv diretorio-de-origem/arquivo diretorio-destino`
  - se adicionar no  diretorio-destino/novo-nome move e troca o nome do arquivo
  - pode ser usado apenas para renomear arquivos.

### Iniciando, visualizando e encerrando um processo

- `ps aux` - lista detalhada de todos os processos em execução no sistema.
- `kill <pid>` - envia um sinal para encerrar o processo especificado pelo ID do processo (PID)
- `killall <nome>` - envia um sinal para encerrar todos os processos que correspondem ao nome fornecido.

## Materiais Complementares

- [Gerência de Pacotes](https://docente.ifrn.edu.br/filiperaulino/disciplinas/isa-redes2n/linux-07-gerencia-de-pacotes)
- [Gerência de Pacotes](https://pt.linux-console.net/?p=1516)
- [Processos](https://www.infowester.com/linprocessos.php#:~:text=Um%20PID%20(Process%20Identifier)%20%C3%A9,mais%20processos%20ao%20mesmo%20tempo.)
