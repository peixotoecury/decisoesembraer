-- Controle de Decisões — Embraer — adiciona Turma do TRT e ID do Substabelecimento na Inscrição S.O.
-- Rodar no SQL Editor do projeto Supabase "Valores" (sydamnqagkdmczmgkvso)

alter table public.embraer_inscricao_so add column if not exists turma_trt text;
alter table public.embraer_inscricao_so add column if not exists id_substabelecimento text;

NOTIFY pgrst, 'reload schema';
