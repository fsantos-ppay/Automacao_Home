# Automacao_Home
Eai Galera, estarei tentando criar um passo a passo aqui resumido e facil, para que possamos estar configurando o nosso ambiente.

<h3>Instalação do robot</h3>
O robot é um framework baseado em python, sendo assim será necessário baixar e instalar o python, vocês podem fazer isso baixando o instalador <a href="https://www.python.org/downloads/">aqui</a>, Haa e não se esqueça de habilitar o checkbox para adicionar o python path ;D. Após ter baixado e instalado o python vamos estar instalado o robot, para isso vamos abrir o cmd e executar o comando "pip install robotframework" e após finalizar a instalação, vamos verificar se ficou tudo certo, sendo assim executamos o comando "robot --version"

<h3>Instalando a lib do Appium</h3>
Para que a nossa automação funcione, e possamos usar os comandos do selenium, será necessáiros a instalação da lib do selenium, que será necessário apenas um comando, você irá abrir o seu cmd e executar a seguinte palavra mágica "pip install robotframework-appiumlibrary". Com isso ai a lib será instalada :D

<h3>Configuração do Webdriver Agent</h3>
<p>Para a execução dos testes IOS será necessário a instalação do nosso querido webdriver Agent, para isso, vamos baixar e instalar o Xcode na nossa maquina, abri um arquivo de teste e acessar a aba de "Signing & Capabilities".</p>

<p>Nessa mesma aba marque o checkBox "Automatically manage signing", adicione uma conta, pode ser uma conta pessoal sua da apple, e selecione a opção "Personal team", na label Bundle identifier insira o bundle de acordo com a versão do app que será testada.
Após realizar essa config, você deverá acesar a aba Product, no xcode e iniciar o teste, nessa parte será necessário estar com um aparelho conectado ao Mac, ao finalizar o teste com sucesso, o Webdriver Agent será instalado no celular.</p>

<p>Para habilitarmos o wda no celular precisaremos ir nas configurações gerais> Gestão de VPN e Dispositivo> App do desenvolvedor e deixar o wda como confiavel, após isso já será possível executar os testes.</p>

<h3>Execução dos testes</h3>
Caso você esteja usando o VSCode a maneira mais simples de fazer essa execução, será clicando no botão de play, ou no "run" logo acima de cada teste. Mas se você não quiser executar desta forma, podemos usar o terminal,  mas para isso será necessário entrar na pasta do projeto utilizando o comando "cd Automacao_Home".

Dado que você esteja na pasta dos testes de api, vc vai executar o seguinte comando para a execução: robot -d ./log Picpay.robot.


