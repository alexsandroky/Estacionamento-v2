ESTACIONAMENTO JONATHAN - VERCEL

O projeto é estático e não precisa de Node.js nem build.

ARQUIVO PRINCIPAL:
index.html

COMO PUBLICAR:
1. Entre em https://vercel.com/
2. Faça login.
3. Clique em Add New -> Project.
4. Se estiver usando GitHub, envie a pasta para um repositório e importe o projeto.
5. Se estiver usando a opção de upload/drag-and-drop disponível na sua conta, envie esta pasta/projeto.
6. Não é necessário configurar Framework Preset, Build Command ou Output Directory para este site estático.

LOGIN DO ADMIN:
Usuário: admin
Senha: admin

IMPORTANTE SOBRE TEMPO REAL:
O index.html já contém suporte para Supabase Realtime, mas a URL e a chave pública do seu projeto ainda precisam ser colocadas no próprio index.html. Sem essas credenciais, o site funciona usando o armazenamento local do navegador, então os dados não são compartilhados entre aparelhos.

No index.html, procure por:
SUPABASE_URL
SUPABASE_ANON_KEY

Depois de configurar o Supabase e as tabelas/policies, o mesmo index.html passa a sincronizar entre dispositivos.
