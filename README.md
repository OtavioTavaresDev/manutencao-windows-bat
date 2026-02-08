README — manutencao.bat

Nome do Script: Manutenção Automática do Windows
Finalidade: Limpeza, reparo e otimização básica do sistema operacional de forma automática e silenciosa.

📌 Visão Geral

Este script executa uma rotina completa de manutenção preventiva no Windows, focando em:

Remoção de arquivos inúteis

Correção de erros do sistema

Reparo de componentes internos do Windows

Otimização de armazenamento

Restauração da pilha de rede

Projetado para restaurar estabilidade, reduzir lentidão e corrigir falhas comuns causadas por cache corrompido, arquivos temporários acumulados ou inconsistências do sistema.

⚙️ Requisitos

Windows 10 ou 11

Permissão de Administrador (o script eleva automaticamente)

▶️ Como usar

Clique duas vezes no arquivo manutencao.bat

Aceite a permissão de administrador

Aguarde a execução completa (pode levar vários minutos)

🔁 Execução automática ao iniciar o PC

Pressione Win + R

Digite:

shell:startup


Cole o manutencao.bat nessa pasta

🧠 O que cada parte faz
Componente	Função Técnica	Impacto
Limpeza de %temp% e Windows\Temp	Remove arquivos temporários órfãos	Libera espaço e reduz lentidão
ipconfig /flushdns	Limpa cache de resolução de nomes	Corrige falhas de internet
sfc /scannow	Verifica integridade de arquivos do sistema	Repara arquivos corrompidos
DISM /RestoreHealth	Repara imagem do Windows	Corrige falhas profundas do SO
cleanmgr /sagerun	Limpeza avançada de disco	Remove resíduos de updates
defrag /O	Otimiza estrutura de dados no disco	Melhora leitura/gravação
netsh reset	Restaura pilha TCP/IP	Resolve erros de rede
⏱ Frequência Recomendada
Tipo de Uso	Frequência
Usuário comum	1 vez por semana
PC lento ou instável	2 vezes por semana (temporário)
SSD saudável	Pode remover a etapa de desfragmentação
⚠️ Avisos

Pode solicitar reinicialização após concluir

Durante o SFC e DISM, o sistema pode ficar mais lento temporariamente

Não interromper o script no meio do processo

🧩 Categoria do Projeto

Este arquivo faz parte do pacote:

Sistema de Manutenção e Otimização Modular (.BAT Suite)

Função no projeto: Módulo de Integridade e Limpeza do Sistema

🚀 Próximos módulos sugeridos

rede_gamer.bat → Otimização de latência

startup_optimizer.bat → Controle de programas ao iniciar

forense_log.bat → Coleta de logs do sistema

backup_essencial.bat → Backup automático de arquivos importantes

modo_diagnostico.bat → Relatório completo do PC

Status: Estável
Nível: Manutenção Profunda Automatizada
Interação do usuário: Nenhuma necessária


## 📄 Licença

Este projeto é distribuído sob a Licença MIT.

Permissão é concedida, gratuitamente, a qualquer pessoa que obtenha uma cópia deste software e dos arquivos de documentação associados, para usar, copiar, modificar, mesclar, publicar, distribuir, sublicenciar e/ou vender cópias do software, sujeita às seguintes condições:

O aviso de copyright e este aviso de permissão devem ser incluídos em todas as cópias ou partes substanciais do Software.

O SOFTWARE É FORNECIDO "COMO ESTÁ", SEM GARANTIA DE QUALQUER TIPO, EXPRESSA OU IMPLÍCITA, INCLUINDO, MAS NÃO SE LIMITANDO A, GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UM DETERMINADO FIM E NÃO INFRAÇÃO. EM NENHUM CASO OS AUTORES OU DETENTORES DOS DIREITOS AUTORAIS SERÃO RESPONSÁVEIS POR QUALQUER REIVINDICAÇÃO, DANO OU OUTRA RESPONSABILIDADE, SEJA EM AÇÃO DE CONTRATO, DELITO OU DE OUTRA FORMA, DECORRENTE DE, OU EM CONEXÃO COM O SOFTWARE OU O USO OU OUTRAS NEGOCIAÇÕES NO SOFTWARE.
