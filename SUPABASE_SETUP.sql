-- Estacionamento Jonathan
-- Execute este SQL no Supabase > SQL Editor.
-- Depois, no index.html, coloque a Project URL e a chave PUBLICA (publishable/anon).

create table if not exists public.estacionamento_registros (
  id text primary key,
  tipo text not null check (tipo in ('patio', 'saida')),
  placa text not null,
  cor text not null,
  telefone text not null,
  vaga integer not null check (vaga between 1 and 20),
  entrada bigint not null,
  saida bigint,
  minutos integer,
  valor numeric(10,2)
);

alter table public.estacionamento_registros enable row level security;

-- Para este projeto simples, o site usa a chave pública e o login visual admin/admin.
-- Isso NÃO é autenticação de produção: qualquer pessoa com a chave pública poderá acessar
-- a tabela conforme estas políticas. Para um sistema real, use Supabase Auth.

drop policy if exists "estacionamento_select" on public.estacionamento_registros;
drop policy if exists "estacionamento_insert" on public.estacionamento_registros;
drop policy if exists "estacionamento_update" on public.estacionamento_registros;
drop policy if exists "estacionamento_delete" on public.estacionamento_registros;

create policy "estacionamento_select"
on public.estacionamento_registros
for select
to anon, authenticated
using (true);

create policy "estacionamento_insert"
on public.estacionamento_registros
for insert
to anon, authenticated
with check (true);

create policy "estacionamento_update"
on public.estacionamento_registros
for update
to anon, authenticated
using (true)
with check (true);

create policy "estacionamento_delete"
on public.estacionamento_registros
for delete
to anon, authenticated
using (true);

-- Permissões usadas pelo Data API.
grant select, insert, update, delete on public.estacionamento_registros to anon, authenticated;

-- Habilita eventos de INSERT/UPDATE/DELETE para o Supabase Realtime.
alter publication supabase_realtime add table public.estacionamento_registros;

-- Se a tabela já estiver na publicação, o comando acima pode informar que ela já existe.
-- Nesse caso, ignore apenas essa mensagem e mantenha o restante.
