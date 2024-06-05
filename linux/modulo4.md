# Módulo 4: Serviços Linux

## Servidores de Arquivos com Linux (SAMBA)

Software que permite compartilhar arquivos e impressoras entre sistemas operacionais Linux/Unix e Windows.

**Configuração do SAMBA**

```bash
apt install samba -y
cd /disco2/
mkdir publica
ls -la
chmod 777 publica/
ls -l
nano /etc/samba/smb.conf
systemctl restart smbd
systemctl status smbd
systemctl enable smbd
```

**Configuração no arquivo `/etc/samba/smb.conf` usando `nano`**:

```ini
[publica]
path = caminho-da-pasta
writable = yes
guest ok = yes
guest only = yes
```

### Apache

Um dos servidores web mais populares, utilizado para hospedar sites e aplicações web.

```bash
apt install apache2 -y
systemctl start apache2
systemctl status apache2
nano /var/www/html/index.html
cd /var/www/html/
rm index.html
nano index.html
```

### MySQL

Sistema de gerenciamento de banco de dados relacional, amplamente utilizado para armazenar e gerenciar dados em aplicações web.

```bash
apt install mysql-server-8.0 -y
mysql -u root -p
```

## Materiais Complementares

- [O que são servidores?](https://www.qnapbrasil.com.br/blog/post/o-que-e-servidor-armazenamento-de-dados)
- [Modelo cliente-servidor](https://www.gta.ufrj.br/ensino/eel878/redes1-2016-1/16_1/p2p/modelo.html)
- [Site oficial do Apache](https://www.apache.org/)
- [Site oficial do SAMBA](https://www.samba.org/)
- [Site oficial do MySQL](https://www.mysql.com/)
