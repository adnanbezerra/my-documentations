# Como usar o TLP para controle de vida da bateria em um ThinkPad?

**Disclaimer:** Why isn't it in English?
**Answer:** Because I'm Brazilian and this is a tutorial written by me for my future self. If you want to read it, then translate the page.

## TL;DR
- [Link do TLP](https://linrunner.de/tlp/index.html)
- Comandos para rodar:

``` bash
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
```

Em ThinkPads, rode:

``` bash
tlp-stat -b
```

Veja qual o resultado sugerido ao final, e rode um dos dois:

``` bash
sudo apt install tp-smapi-dkms
OU
sudo apt install acpi-call-dkms
``` 

Depois, para a edição das confs

``` bash
sudo vim /etc/tlp.conf
```

Adicionar ao arquivo o seguinte, com os valores de thresholds que você quiser:

``` bash
START_CHARGE_THRESH_BAT0=75
STOP_CHARGE_THRESH_BAT0=80
```

:wp para sair do Vim, caso quem leia isso use algum editor inferior como o Nano

Ao final, é preciso colocar o TLP para funcionar, usando

``` bash
sudo tlp start
``` 

## Explicação mais detalhada

### O que é o TLP?

O nome não é sigla para nada. Ele realmente se chama TLP.

É uma ferramenta CLI para Linux que serve para otimizar o seu dispositivo de diversas formas, mas, pelo que eu li, parece que a principal é a manutenção da vida útil da bateria do notebook, criando thresholds para começar a carregar e para parar. 

Ele roda inteiramente via terminal, e as configurações personalizadas podem ser feitas de forma temporária no mesmo terminal ou de forma permanente editando o arquivo /etc/tlp.conf.

Ele também tem algumas configurações sobre o resto do sistema, como frequências da placa gráfica e do processador, algo relacionado a power saving de bateria também. Várias coisas.

### Por que botar threshold na bateria?

Porque deixá-la descarregar por completo (ou próximo do completo) ou deixá-la carregar 100% reduz a vida útil do dispositivo. 

Quando a bateria chega próximo aos 80% ou 90%, ela inconfundivelmente passa a carregar muito mais devagar. Isso porque, quando ela está quase cheia, começa a gerar muito mais calor do que efetivamente carregar-se, o que ocasiona trabalho demasiado para a bateria e reduz a vida útil.

Quando, porém, ela vai para baixo dos 15/20%, ela faz muito mais esforço para liberar a energia da bateria para o sistema, o que também é ofensivo à vida útil da mesma. 

Por isso, com os thresholds, é possível manter seu computador sempre na tomada e ele só irá carregar em intervalos de carga que sejam seguros para si mesmo, de forma automática, o que é interessante de se fazer.

### Quais thresholds são seguros?

Você vai notar que, por padrão, o TLP bota thresholds para começar a carregar aos 75% e parar aos 85%. Por mais que seja contraintuitivo, dessa forma a bateria tem menos esforço para se encher de volta e também para se esvaziar de volta.

No entanto, o site oficial da ferramenta diz que, se seu dispositivo fica *sempre ligado à tomada*, é interessante que ele **comece a carregar em 40% e pare em 50%.**

Se, porém, ele *não fica ligado à tomada*, o interessante é que ele **comece aos 85% e pare aos 90%**.

Se, por fim, *você não quer pensar muito*, **siga o padrão do TLP.**

ThinkPads novos têm, também, um firmware na bateria que reconhece imediatamente quando ela fica sempre carregando e faz um ajuste de threshold automático. Se a sua máquina está sempre em 100%, ela se configura para não carregar a bateria à sua capacidade máxima, mas sim seguir alguns thresholds sem que o usuário perceba para melhorar a vida útil.

