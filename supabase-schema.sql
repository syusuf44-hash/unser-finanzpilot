-- Einmalig im Supabase SQL Editor ausführen.
create table if not exists public.transactions (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  payload jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);

alter table public.transactions enable row level security;

create policy "Eigene Umsaetze lesen"
on public.transactions for select
using (auth.uid() = user_id);

create policy "Eigene Umsaetze anlegen"
on public.transactions for insert
with check (auth.uid() = user_id);

create policy "Eigene Umsaetze aktualisieren"
on public.transactions for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Eigene Umsaetze loeschen"
on public.transactions for delete
using (auth.uid() = user_id);
