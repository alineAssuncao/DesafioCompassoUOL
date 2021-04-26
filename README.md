<h1 align="center"> Desafio Compasso UOL</h1>

<p>Automação do <a href="https://github.com/desafios-qa-automacao/desafio-cypress-web/blob/main/Orientacoes_Desafio_Cypress_Web.pdf">desafio</a> proposto pela Compasso UOL, utilizando o <a href="https://robotframework.org/">Robot Framework</a></p>.
 
 ![Build Status](https://img.shields.io/github/license/alineAssuncao/DesafioCompassoUOL)
 
## Pré-requistos
<p>Os softwares abaixo são necessários para a execução do projeto:</p>
<p>- <a href="https://git-scm.com/">Git</a></p>
<p>- <a href="https://www.docker.com/">Docker</a></p>
<p>- <a href="https://www.jenkins.io/doc/book/installing/">Jenkins</a></p>
<p>- <a href="https://www.jenkins.io/doc/pipeline/steps/robot/">Robot Framework Plugin</a></p>
<p>- <a href="https://www.jenkins.io/doc/book/managing/plugins/">Github Plugin</a></p>
<p>- <a href="https://ubuntu.com/">Rodar no Ubuntu ou outra distro linux baseada no mesmo.</a></p>

## Passos para rodar o projeto:
- Clonar o <a href="https://github.com/alineAssuncao/DesafioCompassoUOL">repositório</a>;
```
$ git clone https://github.com/alineAssuncao/DesafioCompassoUOL.git
```

- No terminal abrir a pasta onde foi clonado o repositório, como no exemplo;
```
$ cd /meu_caminho/DesafioCompassoUOL
```

- Rodar o comando com privilégios de root para que o container docker seja criado e aguardar finalizar com sucesso;
```
$ docker build -t robot ./runner/
```

- Criar um job no Jenkins utilizando o <a href="https://imasters.com.br/back-end/pipeline-como-codigo-no-jenkins">Jenkinsfile</a> do projeto e alterar o caminho para a pasta onde está o projeto.

![4](https://user-images.githubusercontent.com/28988843/116151764-6a73c800-a6bb-11eb-897a-84f4655fbcaa.png)

- No Jenkins acessar >> Gerenciar Kenkins >> Console de script e executar o comando;
```
System.setProperty("hudson.model.DirectoryBrowserSupport.CSP","sandbox allow-scripts; default-src 'none'; img-src 'self' data: ; style-src 'self' 'unsafe-inline' data: ; script-src 'self' 'unsafe-inline' 'unsafe-eval' ;")
```
![3](https://user-images.githubusercontent.com/28988843/116151838-82e3e280-a6bb-11eb-98cc-0ebac8908209.png)

- Acessar o job criado no Jenkins >> Construir agora e acompanhar os resultados.

Para mais informações ver o documento com a <a href="">Solução detalhada do projeto</a>.
