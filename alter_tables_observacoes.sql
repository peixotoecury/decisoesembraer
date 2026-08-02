-- Controle de Decisões — Embraer — adiciona campo de Observações Adicionais em todas as abas com e-mail
-- Rodar no SQL Editor do projeto Supabase "Valores" (sydamnqagkdmczmgkvso)

alter table public.reportes_decisao_embraer add column if not exists observacoes_adicionais text;
alter table public.embraer_agendamento_pericia add column if not exists observacoes text;
alter table public.embraer_inscricao_so add column if not exists observacoes text;
alter table public.embraer_quesitos_ergonomicos add column if not exists observacoes text;
alter table public.embraer_subsidio_quesitos_medicos add column if not exists observacoes text;

NOTIFY pgrst, 'reload schema';
