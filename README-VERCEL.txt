ESTACIONAMENTO JONATHAN — VERCEL + BANCO

Este projeto usa:
- index.html
- /api/estacionamento.js
- Neon Postgres (via DATABASE_URL)

COMO PUBLICAR
1. Crie um banco PostgreSQL no Neon (ou conecte um banco PostgreSQL compatível).
2. Na Vercel, importe este projeto.
3. Em Settings > Environment Variables, crie DATABASE_URL com a connection string do banco.
4. Faça um novo deploy.
5. Abra o site. A API cria a tabela automaticamente na primeira chamada.

SINCRONIZAÇÃO
Os administradores consultam o servidor a cada 1,5 segundo. Quando alguém registra entrada/saída, todos os outros painéis recebem o estado atualizado sem precisar apertar F5.

LOGIN
Usuário: admin
Senha: admin

OBSERVAÇÃO DE SEGURANÇA
O login admin/admin continua sendo uma proteção visual no navegador. Para produção real, substitua por autenticação de servidor.
