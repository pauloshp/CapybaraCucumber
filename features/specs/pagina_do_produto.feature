#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do AdvantageOnlineShopping
    QUERO Poder personalizar os produtos que irei compara na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página do produto
    Dado que esteja na página de um produto existente

@change_color_pdp
Cenário: Trocar a cor dp produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a imagen apresentada na PDP

@increase_product_quantity
@increase_product_quantity_pdp
Cenário: Aumentar a quantidade de produto na PDP
    Quando aumentar a quantidade de produto
    Então deverá alterar a quantidtidade exibida na PDP

@increase_product_quantity
@increase_product_quantity_cart
Cenário: Aumentar a quantidade de produto na PDP aumenta no carrinho
    Quando aumentar a quantidade de produto
    E adicionar produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com a quantidade aumentada

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso
