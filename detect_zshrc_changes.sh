#!/bin/bash

# Caminho do arquivo .zshrc e backup
ZSHRC_FILE="$HOME/.zshrc"
ZSHRC_BACKUP="$HOME/.zshrc_backup"

# Solicita ao usuário o diretório para salvar o log
while true; do
  read -p "Digite o diretório onde deseja salvar o log de mudanças (caminho completo): " LOG_DIR
  if [ -d "$LOG_DIR" ]; then
    echo "Salvando logs no diretório: $LOG_DIR"
    break
  else
    echo "Diretório não encontrado. Tente novamente."
  fi
done

# Nome do arquivo de log
CHANGES_LOG="$LOG_DIR/zshrc_changes.log"

# Verifica se o backup existe
if [ ! -f "$ZSHRC_BACKUP" ]; then
  echo "Nenhum backup encontrado. Criando backup atual do .zshrc."
  cp "$ZSHRC_FILE" "$ZSHRC_BACKUP"
  exit 0
fi

# Compara o arquivo atual com o backup e salva as alterações
echo "Comparando alterações entre o arquivo atual e o backup:"
diff_output=$(diff "$ZSHRC_BACKUP" "$ZSHRC_FILE")

# Verifica se há mudanças
if [ -z "$diff_output" ]; then
  echo "Nenhuma mudança detectada no .zshrc."
else
  echo "Mudanças detectadas e salvas em $CHANGES_LOG:"
  echo "$diff_output"
  
  # Salva as mudanças em um arquivo de log
  echo "#### $(date) ####" >> "$CHANGES_LOG"
  echo "$diff_output" >> "$CHANGES_LOG"
  echo "" >> "$CHANGES_LOG"
fi

# Pergunta ao usuário se ele deseja atualizar o backup
read -p "Deseja atualizar o backup com o .zshrc atual? (y/n): " UPDATE_BACKUP
if [ "$UPDATE_BACKUP" = "y" ]; then
  cp "$ZSHRC_FILE" "$ZSHRC_BACKUP"
  echo "Backup atualizado."
else
  echo "Backup não foi atualizado."
fi
