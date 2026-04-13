#Script_SOC
#!/bin/bash
# autor: Luiz Fernando Santana Trindade
# dat: 07/04/2026
# contato: luizfernandosantanadev@gmail.com
# versão: 1.0
###########################################

LOG_FILE="Auditoria_$(date +%Y-%m-%d).log"
SERVICO="https://www.google.com" # Pode ser modificado para o site desejado

echo "--- Início da Auditoria: $(date) ---" >> $LOG_FILE # Cria um arquivo de log

#Função para checar o status do serviço:
checar_status(){
	echo "1. Checando o status do serviço em $SERVICO..." >> LOG_FILE
	curl -s - I $SERVICO &> /dev/null #verifica o status do serviço mais resumidamente
	if [ $? -eq 0 ]; then
		echo "-> Status: OK" >> $LOG_FILE
	else
		echo "-> STATUS: Falha. O serviço pode estar offline." >> LOG_FILE
		exit 1
	fi
}	

#Função para encontrar arquivos grandes e velhos:
encontrar arquivos(){
	echo "3. Buscando arquivos antigos (mais de 30 dias)..." >> $LOG_FILE
	find . -type f -mtime +30 -print >> $LOG_FILE
}

checar status
checar_ssl
encontrar arquivos

#Finalizando script:
echo "---Auditoria concluída. Verifique o log: $LOG_FILE ---"