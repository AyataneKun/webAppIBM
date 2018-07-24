Olá, está aplicação web foi feita no NetBeans IDE 8.2 e utiliza MySQL como banco de dados, além de Glassfish 4.1.1 (fornecido juntamente com o
NetBeans 8.2 versões Java EE ou FULL, baixado no site https://netbeans.org/downloads/index.html).

Para inicializar o projeto, é necessário criar um banco de dados com o nome "bancodb_ibm" com a senha "bancodb" (sem aspas), além de criar a
conexão da IDE (no caso, NetBeans) com o banco de dados.

O Arquivo tabelas.txt, contido no GitHub, contém os comandos MySQL necessários para criar as tabelas que seram utilzadas pela aplicação,
além de conter algumas inserções teste para verificar se as tabelas foram criadas e tem os privilégios de inserção. Se utilizar o XAMPP
Control Panel, é possível importar o arquivo dentro do banco de dados pela interface phpAdmin e executar automaticamente os comandos.