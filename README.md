Projeto de Automação em Robot Framework construído na 2ª temporada da série Viver de Teste.

## Dependências
Para instalar as dependências deste projeto execute o arquivo **requirements.txt**
        
        pip install -r requirements.txt
        

## Executar os testes local
Para executar os testes execute o seguinte comando na raiz do projeto:

        robot -d ./logs  --v BROWSER:firefox  tests/