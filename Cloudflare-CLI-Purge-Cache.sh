#!/bin/bash

# Especifica tu correo electrónico y clave API de Cloudflare
EMAIL="tu_correo_electronico"
KEY="tu_clave_api"

# Especifica el ID de tu zona de Cloudflare
ZONE_ID="tu_zona_id"

# Variables para controlar la operación de purga
PURGE_ALL=false
PURGE_PATHS=""
PURGE_URL=""
PURGE_TAGS=""
PURGE_DATE=""

# Función para validar los parámetros de la línea de comandos
function validate_parameters() {
  # Comprueba que la opción -a, -p, -u, -t o -d se ha especificado
  if [[ -z "$1" ]]; then
    echo "Debes especificar la opción -a, -p, -u, -t o -d."
    exit 1
  fi

  # Comprueba que la opción -d solo se especifica una vez
  if [[ $1 == "d" && -n "$PURGE_DATE" ]]; then
    echo "La opción -d solo se puede especificar una vez."
    exit 1
  fi

  # Comprueba que la lista de paths especificada es válida
  if [[ $1 == "p" && ! [[ <span class="math-inline">PURGE\_PATHS \=\~ ^\[a\-zA\-Z0\-9\\\-\_/\]\+</span> ]]; then
    echo "La lista de paths especificada no es válida."
    exit 1
  fi

  # Comprueba que la URL especificada es válida
  if [[ $1 == "u" && ! [[ <span class="math-inline">PURGE\_URL \=\~ ^https?\://\[a\-zA\-Z0\-9\\\-\_/\.\]\+</span> ]]; then
    echo "La URL especificada no es válida."
    exit 1
  fi

  # Comprueba que los tags especificados son válidos
  if [[ $1 == "t" && ! [[ <span class="math-inline">PURGE\_TAGS \=\~ ^\[a\-zA\-Z0\-9\\\-\_,\]\+</span> ]]; then
    echo "Los tags especificados no son válidos."
    exit 1
  fi

  # Comprueba que la fecha especificada es válida
  if [[ $1 == "d" && ! [[ <span class="math-inline">PURGE\_DATE \=\~ ^\[0\-9\]\{4\}\-\[0\-9\]\{2\}\-\[0\-9\]\{2\}</span> ]]; then
    echo "La fecha especificada no es válida."
    exit 1
  fi
}

# Valida los parámetros de la línea de comandos
validate_parameters "$1"

# Realiza la petición a la API de Cloudflare para vaciar la cache
if [ $PURGE_ALL = true ]; then
  # Purga toda la cache
  curl -X POST \
    -H "X-Auth-Email: ${EMAIL}" \
    -H "X-Auth-Key: <span class="math-inline">\{KEY\}" \\
\-H "Content\-Type\: application/json" \\
\-d '\{"purge\_everything"\: true\}' \\
"https\://api\.cloudflare\.com/client/v4/zones/</span>{ZONE_ID}/purge"
fi

# Purga paths específicos
if [ -n "$PURGE_PATHS" ]; then
 curl -X POST \
   -H "X-Auth-Email: ${EMAIL}" \
   -H "X-Auth-Key: ${KEY}" \
   -H "Content-Type: application/json" \
   -d '{"purge_paths": ["'<span class="math-inline">PURGE\_PATHS'"\]\}' \\
"https\://api\.cloudflare\.com/client/v4/zones/</span>{ZONE_ID}/purge"
fi

# Purga la cache por URL
if [ -n "$PURGE_URL" ]; then
  curl -X POST \
    -H "X-Auth-Email: ${EMAIL}" \
    -H "X-Auth-Key: ${KEY}" \
    -H "Content-Type: application/json" \
    -d '{"purge_url": "'<span class="math-inline">PURGE\_URL'"\}' \\
"https\://api\.cloudflare\.com/client/v4/zones/</span>{ZONE_ID}/purge"
fi

# Purga la cache por tag
if [ -n "$PURGE_TAGS" ]; then
  curl -X POST \
    -H "X-Auth-Email: ${EMAIL}" \
    -H "X-Auth-Key: ${KEY}" \
    -H "Content-Type: application/json" \
    -d '{"purge_url": "'<span class="math-inline">PURGE\_TAGS'"\}' \\
"https\://api\.cloudflare\.com/client/v4/zones/</span>{ZONE_ID}/purge"
fi
