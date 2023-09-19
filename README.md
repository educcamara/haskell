# Repositório Haskell

Aqui conterá alguns dos meus mini projetos em Haskell.

## Sumário

- [Funções Base](#funções-base)
- [Funções Alta Ordem](#funções-alta-ordem)
- [Exercícios](#exercícios)

## Funções Base

### Divisores

Lista de divisores com uma função auxiliar recursiva

```haskell

{-\####Função Auxiliar de Divisores####
    Int Original -> Int Variavel -> Lista de Ints (Divisores)
-}
_divs :: Int -> Int -> [Int]
_divs num var
    | num == var = [num]
    | mod num var == 0 = var : _divs num (var +1)
    | otherwise = _divs num (var +1)

{-\####FUNÇÃO DIVISORES####
    Recebe Inteiros e Retorna seus Divisores
-}
divisores :: Int -> [Int]
divisores num = _divs num 1

```

### Primos

Lista de primos com uma função auxiliar de divisores

```haskell
{-
####FUNÇÃO SE PRIMO####
    Recebe um inteiro e retorna se é primo ou não
-}
sePrimo :: Int -> Bool
sePrimo num = divisores num == [1, num]

```

## Funções Alta Ordem

### Dobra

- Recebe uma lista de elementos e junta eles a um único elemento por meio de uma função
- Pode ser feita da esquerda para direita e vice-versa

- **Dobra da Direita para a Esquerda:**

```haskell
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função de Alta Ordem que recebe uma função, valor auxiliar e
    uma lista que será compactada a um único valor da direita para a esquerda
-}
dobraD :: (a -> a -> a) -> a -> [a] -> a
dobraD func y [x] = func x y
dobraD func y (x:xs) = func x (dobraD func y xs)

```

- **Dobra da Esquerda para a Direita:**

```haskell
{-\####FUNÇÃO DOBRA PELA DIREITA####
    Função de Alta Ordem que recebe uma função, valor auxiliar e
    uma lista que será compactada a um único valor da esquerda para a direita
-}
dobraE :: (a -> a -> a) -> a -> [a] -> a
dobraE func y [x] = func y x
dobraE func y (x:xs) = dobraE func (func y x) xs

```

### Mapeia

Recebe uma lista de elementos e aplica uma função a cada elemento da lista

```haskell
{-\####FUNÇÃO MAPEIA####
    Função de Alta Ordem que recebe uma função e uma lista
    e aplica a função a cada elemento da lista
-}
mapeia :: (a -> b) -> [a] -> [b]
mapeia func [] = []
mapeia func (x:xs) = func x : mapeia func xs

```

## Exercícios

### Converter para Caixa Alta/Baixa

Dado uma string, a função *caixaAlta* e *caixaBaixa* retornam a string com todas as letras maiúsculas e minúsculas, respectivamente

- **Importar Biblioteca Char:**

Funções *ord* e *chr* que convertem caracteres em números e vice-versa

```haskell
import Data.Char
```

- **caixaAlta:**

```haskell

{-\####FUNÇÃO CAIXA ALTA####
    Recebe uma String e retorna ela em caixa alta
-}
caixaAlta :: [Char] -> [Char]
caixaAlta [] = []
caixaAlta (x:xs)
    | ord x >= 97 && ord x <= 122 = chr (ord x - 32) : caixaAlta xs
    | otherwise = x : caixaAlta xs

```

- **caixaBaixa**

```haskell
{-\####FUNÇÃO CAIXA BAIXA####
    Recebe uma String e retorna ela em caixa baixa 
-}
caixaBaixa :: [Char] -> [Char]
caixaBaixa [] = []
caixaBaixa (x:xs)
    | ord x >= 65 && ord x <= 90 = chr (ord x + 32) : caixaBaixa xs
    | otherwise = x : caixaBaixa xs

```
