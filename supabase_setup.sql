create table if not exists checklist_usage (
  id uuid primary key default gen_random_uuid(),
  subject text not null,
  deadline date not null,
  used_at date not null default current_date,
  days_diff integer not null,
  created_at timestamptz not null default now()
);

alter table checklist_usage enable row level security;

create policy "Allow anon insert"
  on checklist_usage
  for insert
  to anon
  with check (true);
