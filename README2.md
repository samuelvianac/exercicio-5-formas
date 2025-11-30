# Exercício 05 - Integração 2D + 3D

## Descrição
Projeto Godot que integra uma interface 2D com uma cena 3D interativa, demonstrando a conexão entre os dois mundos.

## Funcionalidades
- **Menu 2D** com botão "Iniciar Cena 3D"
- **Cena 3D** com cubo físico que pode ser controlado
- **Transição suave** entre as cenas
- **Física realista** com colisões e gravidade

## Controles na Cena 3D
- **WASD**: Mover o cubo
- **Q/E**: Rotacionar o cubo
- **Espaço**: Pular
- **R**: Resetar posição do cubo
- **ESC**: Voltar ao menu 2D

## Como usar
1. Execute o projeto no Godot
2. Clique em "Iniciar Cena 3D" no menu 2D
3. Use os controles para interagir com o cubo 3D
4. Pressione ESC para voltar ao menu

## Estrutura do Projeto
- `Menu2D.tscn`: Interface 2D com botão
- `Menu2D.gd`: Controle do menu e transições
- `Level.tscn`: Cena 3D com física
- `Cubo3D.gd`: Script de controle do cubo físico

## Aprendizados Integrados
- Interface de usuário 2D
- Cenas 3D com física
- Transição entre cenas
- Controles de entrada
- Materiais e iluminação 3D
