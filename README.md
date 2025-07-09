<h1 align="center">Trade Sticker</h1>

### Descrição
Projeto de Automação em Robot Framework construído na 2ª temporada da série Viver de Teste: Trade Sticker - Conectando colecionadores de figurinhas da copa. 


### Funcionalidades dos Testes
Abertura da aplicação

Login e navegação

Simulação de trocas

Validação de elementos da interface

###  Tecnologias Usadas
Robot Framework

Python 3

SeleniumLibrary

VS Code (com extensão do RF)

### Dependências
Para instalar as dependências deste projeto execute o arquivo **requirements.txt**
        
        pip install -r requirements.txt
        

### Executar os testes local
Para executar os testes execute o seguinte comando na raiz do projeto:

        robot -d ./logs  --v BROWSER:firefox  tests/



