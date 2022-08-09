#language: pt

Funcionalidade: Google

Contexto: Estar na home
    Dado que o usuario acesse a home


Cenário: Carregar a página do Google
    Então deverá exibir o logo da Google

Cenário: Buscar por compass
    Quando buscar por "compass"
    Então deverão ser encontrados resultados
