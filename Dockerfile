# Utiliser l'image officielle de Keycloak
FROM quay.io/keycloak/keycloak:26.0.8

# Définir les variables d'environnement nécessaires
ENV KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true \
    KC_FEATURES=preview \
    KC_HOSTNAME_STRICT=false \
    KC_DB=dev-file

# Ajouter un utilisateur admin au démarrage
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin \
    KC_BOOTSTRAP_ADMIN_PASSWORD=admin

# Exposer le port 8080
EXPOSE 8080

# Commande de démarrage de Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-host=0.0.0.0"]

