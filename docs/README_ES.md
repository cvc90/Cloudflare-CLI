# 📚 Documentación

Bienvenido a la sección de documentación, aquí encontrará toda la documentación necesaria.

## 🏴 Traducciones de este archivo

* <a href="README.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/gb.svg" alt="README.md" style="height: 20px !important;width: 20px !important;"> English
  </a> 

* <a href="README_DE.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/de.svg" alt="README_DE.md" style="height: 20px !important;width: 20px !important;"> German
  </a> 

## 📚 Índice

### 📥 Instalación

- [Instalación directa](/docs/DIRECT_INSTALLATION.md)
- [Contenedor Docker](/docs/DOCKER_INSTALLATION.md)

### 📥 Configuración

- [Script Purga Caché de Cloudflare](/docs/Purge-Cloudflare-Cache.md)

### 🐛 Ayuda y consejos de depuración

- [Consejos de depuración](/docs/DEBUG_TIPS.md)

## 👨‍💻 Prioridades de desarrollo

Prioridades de mayor a menor:

* 🔼 Corrección de errores en las funciones básicas que no pueden resolverse con soluciones provisionales
* 🔵 Nuevas funciones básicas que abren otras oportunidades (por ejemplo, plugins). 
* 🔵 Refactorización que permite una implementación más rápida de futuras funcionalidades
* 🔽 (baja) Funcionalidad y mejoras de la interfaz de usuario (PRs bienvenidos 😉)

Filosofía de diseño: Centrarse en la funcionalidad básica y aprovechar las aplicaciones y herramientas existentes para que Cloudflare-CLI se integre en otros flujos de trabajo. 

Ejemplos:

    1. Apoyar apprise tiene más sentido que implementar múltiples pasarelas de notificación individuales
    2. Implementar el soporte de expresiones regulares en todas las configuraciones para la validación tiene más sentido que validar una configuración con una expresión específica. 

Las peticiones específicas de interfaz de usuario son de baja prioridad, ya que el marco elegido por el desarrollador original no es muy extensible (y, según parece, no admite componentes) y tiene un soporte móvil limitado. Además, considero que la propuesta de valor es menor que trabajar en otra cosa.

No dudes en enviar PRs si estás interesado. Intenta **mantener los PRs pequeños/sobre el tema** para que sean más fáciles de revisar y aprobar. 

Dicho esto, me lo replantearía si más gente y/o patrocinadores recurrentes presentan una solicitud 😉.

## 🙏 Peticiones de funciones

Por favor, sea lo más detallado posible con las **soluciones alternativas** que ha considerado y por qué una función nativa es la mejor manera. Así tendré más contexto y será más probable que se implemente. Idealmente, una solicitud de función debe estar en el formato "Quiero ser capaz de hacer XYZ para que ZYX. He considerado estos enfoques XYZ".

## ➕ Pull requests (PRs)

Si envía un PR, por favor:

1. Compruebe que sus cambios son compatibles con las instalaciones existentes y con una configuración en blanco. 
2. Las características existentes deben conservarse siempre. 
3. Mantén el PR pequeño, dentro del tema y no cambies código que no sea necesario para que el PR funcione
4. Lo ideal es que el código de las nuevas características sea reutilizable para diferentes propósitos, no para un caso de uso muy limitado.
5. Las nuevas funcionalidades deberían implementarse a través del sistema de plugins, si es posible.

## 🐛 Enviar un problema o fallo

Antes de enviar un nuevo número, dedique un par de minutos a investigar:

* Comprobar [🛑 Problemas comunes](/docs/COMMON-ISSUES.md) 
* Comprobar [💡 Incidencias cerradas](https://github.com/cvc90/Cloudflare-CLI/issues?q=is%3Aissue+is%3Aclosed) si se resolvió un problema similar en el pasado.
* Cuando envíe una incidencia ❗[enable debug](/docs/DEBUG_TIPS.md)❗

⚠ Siga el modelo de incidencia predefinido para resolver su incidencia con mayor rapidez.
