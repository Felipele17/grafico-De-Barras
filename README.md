# Gráfico de Barras (Exemplo)
Repositório com app exemplo para o uso do gráfico de Barras. <br>

O gráfico de barras é um gráfico com barras retangulares e comprimento proporcional aos valores que ele apresenta. 

Alguns gráficos de barra apresentam barras agrupadas em grupos (gráficos de barras agrupadas) e outros mostram as barras divididas em sub-partes para mostrar efeito acumulativo.
Um eixo do gráfico mostra especificamente o que está sendo comparado enquanto o outro eixo representa valores discretos. 


<br>


![11-04 13_55_10-Window](https://user-images.githubusercontent.com/34018974/140416997-da2d9798-268c-467b-99e3-9f9327ec9502.png)
![5-Window](https://user-images.githubusercontent.com/34018974/140417096-1ca9c223-5a3e-436f-b5c4-33845fdd6100.png)
![2021-11-04 13_55_56-Window](https://user-images.githubusercontent.com/34018974/140417108-4a03e8b2-5079-45af-9c39-767feac25b01.png)


# Passos
## 1. Criando uma estrutura básica para a utilização do Framework
### Exemplo com Barras Únicas
<img width="1438" alt="Screen Shot 2021-11-05 at 14 39 54" src="https://user-images.githubusercontent.com/34018974/140554731-ad694762-404b-4aa3-a5ab-48d21475314b.png">

### Exemplo com Barras empilhadas
<img width="1420" alt="Screen Shot 2021-11-05 at 14 31 09" src="https://user-images.githubusercontent.com/34018974/140553645-e3f31071-a627-43c6-bcb5-e917e899b55a.png">

### Exemplo com Barras lado-a-lado
<img width="1438" alt="Screen Shot 2021-11-05 at 14 36 48" src="https://user-images.githubusercontent.com/34018974/140554777-2cb4896f-9283-41b5-a017-24c4c23d8d4d.png">


## 2. Alterando o título e os valores das barras <br>

### Onde alterar?
var barValuesOne: [CGFloat] = [50, 60, 70, 80, 90]
        
Primordialmente, cada gráfico de barras deve possuir um valor no seu topo, pois é uma representação de quantidades de alguma coisa. Para alterar esses valores, no gráfico de barras únicas alteramos esses parâmetros visualizados na imagem abaixo: bar valuesOne: 

<img width="1155" alt="Screen Shot 2021-11-05 at 15 00 25" src="https://user-images.githubusercontent.com/34018974/140561434-a440a59c-6d39-420c-8082-200220678b34.png">

⚠️ Use o nome da classe do gráfico para instanciar o gráfico em seu projeto: DispersionGraph <br>
⚠️ Passe como parâmetro, para o seu gráfico, uma matriz com CGPoints. Nesse primeiro exemplo temos apenas um dado na matriz, já que estamos analisando apenas um dado <br>
⚠️ Lembre-se de setar uma configuração de tamanho para o seu gráfico. Recomendamos no mínimo 350x500 <br>

## 3. Personalizando o gráfico 
### Título 
⚠️ Passe mais um parâmetro para o seu gráfico, com o título desejado <br>
title: String <br>
<img width="1019" alt="Captura de Tela 2021-11-04 às 13 53 47" src="https://user-images.githubusercontent.com/53840501/140383736-1c8eb74e-d181-4080-b1a2-23f52bbdefbd.png">

### Cores 
⚠️ Passe para seu gráfico, como parâmetro, um vetor de Cores (tipo Color). Seu vetor deve conter a mesma quantidade de cores que as variáveis. No caso, vamos utilizar apenas uma cor por estarmos analisando apenas um par de dados variável <br>
* colors: [Color] <br>
<img width="992" alt="Captura de Tela 2021-11-04 às 13 55 42" src="https://user-images.githubusercontent.com/53840501/140384073-7504ace4-662a-418f-b3d9-169cccd9c2fc.png">

### Eixos 
⚠️ Passe mais dois parâmetros para o seu gráfico, com o nome de cada eixo <br>
⚠️ Lembre-se de declarar os eixos antes do valor da cor, quando for passar para a função do gráfico <br>
* eixoX: String <br>
* eixoY: String <br>
<img width="1077" alt="Captura de Tela 2021-11-04 às 14 05 48" src="https://user-images.githubusercontent.com/53840501/140385764-ccccf9d3-c6ac-4f0c-b5da-9d57cfcdb93a.png">


### Legenda 
⚠️ Passe mais um parâmetro para o seu gráfico, com o nome de cada variável <br>
* subtitle: [String] <br>
<img width="1044" alt="Captura de Tela 2021-11-04 às 14 08 06" src="https://user-images.githubusercontent.com/53840501/140386132-d5fb9b59-1ad3-466a-bd7e-b05f0b4c26db.png">


# Teste com múltiplas variáveis 
⚠️ Testando agora com mais um par de variáveis <br>
⚠️ Para esse teste, não atribuímos cores pois o framework possui sua paleta padrão (para 7 pares de variávies no máximo) <br>


<img width="1108" alt="Captura de Tela 2021-11-04 às 14 13 53" src="https://user-images.githubusercontent.com/53840501/140387083-a9fc41ef-1c3e-4127-8c40-2295a99462c9.png">
