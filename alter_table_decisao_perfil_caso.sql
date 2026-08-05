-- Controle de Decisões — Embraer — adiciona classificação do caso (Reintegrados/Estratégicos/Minutos Residuais)
-- Rodar no SQL Editor do projeto Supabase "Valores" (sydamnqagkdmczmgkvso)

alter table public.reportes_decisao_embraer add column if not exists perfil_caso text;
alter table public.reportes_decisao_embraer add column if not exists perfil_caso_obs text;

NOTIFY pgrst, 'reload schema';
