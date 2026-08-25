-- ===========================================================
-- Configuración de la tabla de reseñas para davidcreatuweb.com
-- Pégalo entero en Supabase -> SQL Editor -> Run
-- ===========================================================

create table reviews (
  id uuid primary key default gen_random_uuid(),
  nombre text not null,
  texto text not null,
  valoracion int not null check (valoracion between 1 and 5),
  estado text not null default 'pendiente' check (estado in ('pendiente', 'aprobada', 'rechazada')),
  created_at timestamptz not null default now()
);

-- Activar seguridad a nivel de fila (obligatorio para exponer la tabla al público)
alter table reviews enable row level security;

-- Cualquier visitante puede INSERTAR una reseña, pero siempre como "pendiente"
create policy "Insertar reseñas públicas"
on reviews for insert
to anon
with check (estado = 'pendiente');

-- Cualquier visitante puede LEER solo las reseñas ya aprobadas
create policy "Leer reseñas aprobadas"
on reviews for select
to anon
using (estado = 'aprobada');

-- Solo tú (usuario autenticado en el panel admin) puedes leer TODAS las reseñas
create policy "Admin lee todas las reseñas"
on reviews for select
to authenticated
using (true);

-- Solo tú puedes actualizar el estado (aprobar / rechazar)
create policy "Admin actualiza estado"
on reviews for update
to authenticated
using (true)
with check (true);

-- ===========================================================
-- Después de ejecutar esto:
-- 1. Ve a Authentication -> Users en Supabase y crea un usuario
--    con tu email y una contraseña. Ese será tu login en admin.html
-- 2. Ve a Project Settings -> API y copia "Project URL" y "anon public key"
-- 3. Pégalas en index.html y admin.html donde pone
--    TU_PROJECT_URL_AQUI y TU_ANON_KEY_AQUI
-- ===========================================================
