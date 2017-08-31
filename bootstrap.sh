#!/usr/bin/env bash

./user-permissions.sh -n
cat <<EOT >> app.env
export DNS_API=${DNS_API:-api.anatroc}
export DNS_FRONT=${DNS_FRONT:-front.anatroc}
export API_URL=${API_URL:-"https://api.anatroc/app_dev.php"}
EOT

source app.env
docker-compose up -d --force-recreate --build

exit 0
