# David - Crea Tu Web

Landing page de servicios de diseño y desarrollo web para negocios. Sitio de una sola página (single-file), estático, sin frameworks ni build step.

**Dominio:** [davidcreatuweb.com](https://davidcreatuweb.com)

---

## 📁 Estructura del proyecto

```
├── index.html       # Web completa (HTML + CSS + JS en un único archivo)
├── favicon.ico       # Favicon multi-resolución (16/32/48/64/128/256 px)
├── og-image.png       # Imagen de vista previa para redes sociales (1200x630)
└── README.md
```

El logo (cabecera y pantalla de carga) va incrustado directamente en `index.html` en base64, por lo que no hace falta ningún archivo de imagen adicional para que la web funcione.

## 🚀 Despliegue

El proyecto está pensado para desplegarse en **Vercel**:

1. Sube este repositorio/carpeta a Vercel (o arrastra los archivos si usas el despliegue manual).
2. **Importante:** coloca `favicon.ico` y `og-image.png` en la **raíz pública** del proyecto (carpeta `public/` si usas esa estructura, o la raíz del repo si el proyecto es estático). Deben quedar accesibles en:
   - `https://davidcreatuweb.com/favicon.ico`
   - `https://davidcreatuweb.com/og-image.png`
3. Activa **Speed Insights** y **Analytics** desde el panel del proyecto en Vercel (pestañas *Speed Insights* / *Analytics*) para que los scripts ya incluidos en el `<head>`/`<body>` empiecen a recoger datos.

No requiere ninguna variable de entorno, build command ni instalación de dependencias.

## ✨ Características

- **Una sola página**, totalmente responsive (móvil / tablet / escritorio).
- **Preloader** animado con el logo antes de mostrar la web.
- **Scroll siempre desde arriba**: al refrescar la página, el navegador no restaura la posición de scroll anterior.
- **Menú móvil**, barra de progreso de scroll y animaciones *reveal* al hacer scroll.
- **Botón flotante de WhatsApp** y enlaces directos con mensaje predefinido para cada plan.
- **Formulario de contacto** (actualmente solo muestra un aviso de confirmación en el navegador — ver sección *Pendiente* más abajo).
- **Acordeón de FAQ**.
- **SEO on-page**: meta description, `canonical`, Open Graph, Twitter Card y datos estructurados (`schema.org` / `ProfessionalService`) con los 3 planes de precios, zona de servicio y datos de contacto.
- **Favicon** propio con la tipografía del logo.

## 🎨 Stack técnico

- HTML5 + CSS3 (variables CSS, sin frameworks) + JavaScript vanilla.
- Tipografías vía Google Fonts: `Space Grotesk`, `Inter`, `JetBrains Mono`.
- Sin dependencias, sin `node_modules`, sin proceso de build.

## 🔧 Mantenimiento habitual

| Quiero cambiar... | Dónde |
|---|---|
| Precios de los planes | Sección `#precios` en `index.html` **y** el bloque `makesOffer` del JSON-LD en el `<head>` |
| Teléfono / email / Instagram | Buscar `wa.me`, `mailto:` e `instagram.com` en `index.html` (aparecen en varios sitios: cabecera, footer, formulario, botón flotante) — actualizar también el JSON-LD |
| Textos del hero / servicios / FAQ | Directamente en el HTML de cada `<section>` |
| Logo | Está incrustado en base64 en dos sitios: `.logo-img` (cabecera) y `.preloader-logo-img` (pantalla de carga). Para cambiarlo hay que regenerar el base64 de la imagen nueva y sustituir el `src` |
| Imagen de vista previa (redes sociales) | Sustituir `og-image.png` manteniendo el mismo nombre y tamaño (1200x630), o cambiar la ruta en las etiquetas `og:image` / `twitter:image` del `<head>` |

## ⚠️ Pendiente / recomendaciones

- **Formulario de contacto:** actualmente el envío solo muestra un `alert()` de confirmación, pero **no envía el email a ningún sitio**. Hay que conectarlo a un servicio como [Formspree](https://formspree.io), [EmailJS](https://www.emailjs.com) o un backend propio para no perder los leads.
- **Legal:** el formulario recoge datos personales (nombre, email, teléfono), por lo que conviene añadir aviso legal, política de privacidad y de cookies (obligatorio en España por RGPD/LOPD).
- **Portfolio / casos reales:** no hay ninguna sección con webs ya entregadas. Es lo primero que suele buscar un cliente potencial antes de contratar.
- **Testimonios:** no hay prueba social (reseñas, valoraciones, logos de clientes).

## 📞 Contacto del negocio

- WhatsApp: +34 608 981 380
- Email: david.garmar10@gmail.com
- Instagram: [@davidgarcia.digital](https://instagram.com/davidgarcia.digital)
