echo "-> Projeto Linux II - Infraestrutura como código <-"

echo "Atualizando o sistema..."

apt update -y
apt upgrade -y

echo "Sistema Atualizado com Sucesso!"



echo "Instalando Apache..."

apt install apache2 -y

echo "Apache Instalado com Sucesso!"


echo "Instalando Unzip..."
apt install unzip -y
echo "Unzip Instalado com Sucesso!"



echo "Baixando e descomprimindo os arquivo do site..."

cd /tmp
wget /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip

echo "Procedimento realizado com Sucesso!"



echo "Copiando os Arquivo para o Diretório Apache..."

cp /tmp/linux-site-dio-main/* /var/www/html  -r

echo "Procedimento realizado com Sucesso!"

