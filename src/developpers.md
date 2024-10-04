# Developper

Avis aux développers, le projet n'est pas facile à setup (du tout (du tout du
tout (du tout du tout du tout (genre vraiment pas)))) Cette page est une version
plus explicite que le readme du repo git.

- Commencez par cloner le repo et rendez vous dans le dossier cloné.
- Pour mettre en place le frontend:
  - copiez le fichier `frontend/static/config.dev.json` dans
    `frontend/static/config.json`
- Pour le backend
  - Copiez le fichier `backend/.env.example` dans `backend/.env`
  - Il faut maintenant mettre en place l'authentification google:
    - Rendez-vous [ici](https://console.cloud.google.com/welcome)
    - Créez un nouveau projet
    - Installez dans la bibliothèque l'api Admin SDK API
    - Allez sur ce projet dans l'écran de consentement OAuth
    - Une fois les cases remplies, enregistrez, et passez à l'étape suivante,
      qui est d'ajouter des champs d'application
    - Ajoutez `/auth/userinfo.email`, `/auth/userinfo.profile` et
      `/auth/admin.directory.user.readonly`
    - Rendez vous ensuite dans Identifiants
    - Créez un identifiant de type `ID client OAuth`
    - Autorisez l'url de redirection de votre backend, par défaut
      `http://localhost:8080/auth/google/callback
    - Vous pouvez désormais remplir les champs du `.env`
  - Maintenant, comme dans tout projet, il faut installer les dépendances
    - Dans le répertoire du projet executez `docker compose up -d`
    - Dans le répertoire `backend` executez `task setup`
    - Dans le répertoire `frontend` executez `task setup`
- Vous pouvez désormais lancer les serveurs de frontend et backend
  - Dans le dossier `backend`: `go run cmd/bar/main.go`
  - Dans le dossier `frontend`: `nmp run dev`

# Troubleshot
