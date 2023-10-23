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
- sudo apt install tp-smapi-dkms
- sudo apt install acpi-call-dkms
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