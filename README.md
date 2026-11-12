# root@aywen:~$ ./snake

Snake avec Root en tête et Aywen à la place des pommes. Tous les 10 Aywen, l'équipe tombe en confettis. Trophées, objets rares (page de la BD faite main, pièce R$, Aywen en or, le sosie…).

## Images

Dépose les images dans `assets/` (PNG carrés, détourés idéalement) :

| Fichier | Rôle |
|---|---|
| `root.png` | Tête du serpent |
| `aywen.png` | La « pomme » |
| `lemoustique.png`, `margouta.png`, `seiny.png`, `julien.png`, `volko.png` | Confettis de l'équipe |

`.webp` et `.jpg` marchent aussi. Sans image, le jeu affiche des pastilles provisoires.

## Lancer en local

```bash
docker build -t snake-root . && docker run -p 8080:80 snake-root
```
puis http://localhost:8080 — ou ouvre simplement `index.html`.

## Déployer sur Dokploy

1. Dokploy → **Create Project** → **Create Service → Application**.
2. **Provider** : GitHub (ou Git) → ce dépôt, branche `main`.
3. **Build Type** : `Dockerfile` (chemin `./Dockerfile`).
4. **Deploy**.
5. Onglet **Domains** → ajoute ton domaine, **Container Port : 80**, active HTTPS (Let's Encrypt).
6. Optionnel : active **Autodeploy** pour redéployer à chaque push.
