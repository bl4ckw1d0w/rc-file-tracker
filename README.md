---

# Script de Detecção de Mudanças no Bashrc/Zshrc

Este projeto contém scripts simples que detectam mudanças no arquivo de configuração `.bashrc` ou `.zshrc`, comparando o estado atual do arquivo com um backup. As mudanças detectadas são registradas em um arquivo de log em um diretório à escolha do usuário.

## Funcionalidades

- Compara o arquivo `.bashrc` ou `.zshrc` atual com uma cópia de backup.
- Registra as mudanças detectadas em um arquivo de log.
- Permite ao usuário escolher o diretório para salvar o log.
- Atualiza o backup conforme solicitado.

## Como Usar

### 1. Clonar o Repositório

Primeiro, clone este repositório em seu ambiente local:

```bash
git clone (https://github.com/bl4ckw1d0w/rc-file-tracker.git)
cd rc-file-tracker
```

### 2. Escolha o Script

Há dois scripts disponíveis:

- `detect_bashrc_changes.sh`: Detecta mudanças no arquivo `.bashrc`.
- `detect_zshrc_changes.sh`: Detecta mudanças no arquivo `.zshrc`.

Escolha o script de acordo com o shell que você está utilizando.

### 3. Tornar o Script Executável

Após escolher o script, torne-o executável:

```bash
chmod +x detect_bashrc_changes.sh   # ou
chmod +x detect_zshrc_changes.sh
```

### 4. Executar o Script

Agora você pode rodar o script escolhido:

```bash
./detect_bashrc_changes.sh   # ou
./detect_zshrc_changes.sh
```

Ao executar o script, ele solicitará o diretório onde deseja salvar o arquivo de log com as mudanças detectadas no `.bashrc` ou `.zshrc`.

### 5. Atualização do Backup

Após a comparação, o script perguntará se você deseja atualizar o backup com a versão atual do `.bashrc` ou `.zshrc`. Isso é útil caso as mudanças detectadas tenham sido intencionais.

## Estrutura do Projeto

```
.
├── detect_bashrc_changes.sh    # Script para Bash
├── detect_zshrc_changes.sh     # Script para Zsh
└── README.md                   # Este arquivo README
```

## Contribuição

Se você encontrar algum bug ou tiver sugestões de melhorias, sinta-se à vontade para abrir uma _issue_ ou enviar um _pull request_.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---
