#language: pt

Funcionalidade: Login

    Cenario: Usuário logado 

        Dado que acesso a tela de login
        Quando eu faço login com "papito@totvs.com" e "pass123"
        Então posso ver a tela minha conta

