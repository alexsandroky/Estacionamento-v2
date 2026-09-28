ESTACIONAMENTO JR — versão atualizada para Vercel

Alterações desta versão:
- Marca alterada para Estacionamento JR.
- Banner/foto atualizado para mostrar JR.
- Navegação superior compacta, com o botão Admin pequeno à esquerda.
- Área de login/admin não aparece na página pública.
- Nova consulta pública antes de “Como Funciona”: o cliente informa a placa e vê se o veículo já está cadastrado, a vaga e o valor estimado até o momento.
- Consulta pública atualiza automaticamente enquanto estiver aberta.
- O painel administrativo continua disponível em: /index.html?admin=1
- Login administrativo atual: admin / admin

Persistência e sincronização:
- Os cadastros NÃO ficam no localStorage e não são perdidos ao fechar a aba.
- O estado oficial fica em PostgreSQL no servidor.
- Ao abrir/F5 em outro aparelho, o painel administrativo lê o mesmo banco.
- O painel consulta o servidor automaticamente a cada 2,5 segundos.
- O mapa público também atualiza a ocupação das vagas automaticamente.

Banco da Vercel:
1. Importe o projeto na Vercel.
2. Conecte um PostgreSQL compatível com @vercel/postgres.
3. O login do site é admin / admin por padrão. Se quiser outra senha, configure ADMIN_PASSWORD na Vercel e altere também ADMIN_SENHA no index.html.
4. Faça o deploy.
5. Faça um cadastro e confirme que ele continua aparecendo depois de fechar a aba e abrir novamente.

IMPORTANTE: sem um PostgreSQL conectado ao projeto Vercel, nenhum sistema web consegue garantir armazenamento compartilhado entre aparelhos. Nesta versão, o cadastro só é confirmado na tela depois que a gravação no servidor retorna sucesso.

A API pública de consulta não expõe telefone ou cor do veículo; retorna somente placa, vaga e horário de entrada.
