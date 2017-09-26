#backup-mysql
#INSTALACÃO

<code>git clone https://github.com/chacal88/backup-mysql.git</code>
<code>cd backup_mysql</code>

 - copie o arquivo mysql_backup para /usr/local/bin/
 
 $<code> cp mysql_backup.sh /usr/local/bin/ </code>
 
#adicione ao crontab
<code>00 00 * * * /usr/local/bin/mysql_backup.sh</code>


#INSTALAÇÃO AWS
Instalar o AWS Command Line Interface no Linux

Instale o AWS Command Line Interface e suas dependências na maioria das distribuições do Linux com pip, um gerenciador de pacote para Python.

Importante
O pacote awscli está disponível em repositórios para outros gerenciadores de pacote, como APT e yum, mas pode não ser a versão mais recente, a menos que seja obtida por meio de pip ou usando o pacote de instalador
Caso já tenha pip, siga as instruções no tópico de instalação principal. Execute pip --version para ver se a sua versão do Linux já inclui Python e pip.

$ <code>pip --version </code>
Se não houver pip, verifique qual versão do Python está instalada.

$ <code>python --version </code>
ou

$ <code>python3 --version </code>
Se você não tiver Python 2 versão 2.6.5+ ou Python 3 versão 3.3+, instale o Python. Caso contrário, instale o pip e a AWS CLI.

Seções

Instalar o Pip
Instalar a AWS CLI com Pip
Instalar o Pip

Caso não tenha pip, instale pip com o script fornecido pela Python Packaging Authority.

Para instalar o pip

Faça o download do script de instalação do pypa.io:

$ <code>curl -O https://bootstrap.pypa.io/get-pip.py </code>
O script faz o download e instala a versão mais recente do pacote chamado pip e outro pacote necessário de setuptools.

Execute o script com Python:

$ <code>python get-pip.py --user </code>
Adicione o caminho executável a sua variável PATH: ~/.local/bin

Para modificar sua variável PATH (Linux, macOS, or Unix)

Encontre o script de perfil do shell em sua pasta de usuário. Se você não tiver certeza de qual shell você tem, execute echo $SHELL.

$ <code>ls -a ~ </code>
.  ..  .bash_logout  .bash_profile  .bashrc  Desktop  Documents  Downloads
Bash – .bash_profile, .profile ou .bash_login.
Zsh – .zshrc
Tcsh – .tcshrc, .cshrc ou .login.
Adicione um comando de exportação para criar o perfil de script.

<code>export PATH=~/.local/bin:$PATH </code>
Este comando adiciona um caminho, ~/.local/bin neste exemplo, para a variável PATH atual.

Carregue o perfil em sua sessão atual.

$ <code>source ~/.bash_profile </code>
Verifique se pip está instalado corretamente.

$ <code>pip --version </code>
pip 8.1.2 from ~/.local/lib/python3.4/site-packages (python 3.4)
Instalar a AWS CLI com Pip

Use pip para instalar o AWS CLI.

$ <code>pip install awscli --upgrade --user </code>
Verifique se o AWS CLI está instalado corretamente.

$ <code>aws --version
aws-cli/1.11.84 Python/3.5.2 Linux/4.4.0-59-generic botocore/1.5.47
Se houver um erro, consulte Solução de problemas de instalações AWS CLI no Linux.

Para atualizar para a versão mais recente, execute o comando de instalação novamente:

$ <code>pip install awscli --upgrade --user </code>

