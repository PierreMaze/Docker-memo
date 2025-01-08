# 🚢 Commandes Docker 🐳

## 🏗️ Créer et lancer un conteneur

Lancer un conteneur à partir d'une image Docker existante :

```
docker run <nom de l'image>
```

---

## 📋 Gérer les conteneurs

### 🔍 Afficher les conteneurs en cours d'exécution

Affiche uniquement les conteneurs actifs :

```
docker ps
docker container ps
```

### 🔎 Afficher **tous** les conteneurs (même arrêtés)

Pour visualiser également les conteneurs arrêtés :

```
docker ps -a
docker container ps -a
```

---

## 🖼️ Gérer les images Docker

### 📜 Lister les images disponibles

Affiche toutes les images disponibles localement sur votre machine :

```
docker image ls
docker images
```

### 🗑️ Supprimer une ou plusieurs images

Supprime une image en fonction de son ID ou de son nom :

```
docker image rm <id de l'image>
docker rmi <id de l'image>
```

---

## 🗑️ Supprimer des conteneurs

### 🔨 Supprimer un ou plusieurs conteneurs

Supprime des conteneurs arrêtés ou inutilisés :

```
docker rm <id du conteneur>
docker container rm <id du conteneur>
```

---

## 🔄 Lancer et interagir avec des conteneurs

### 🖥️ Lancer un conteneur avec un terminal interactif

Permet d'exécuter des commandes directement dans le conteneur :

```
docker run -it <nom de l'image>
```

### 🧹 Lancer un conteneur avec suppression automatique après arrêt

Supprime automatiquement le conteneur à la fin de son exécution :

```
docker run -it --rm <nom de l'image>
```

### 🔄 Redémarrer un conteneur existant

Relance un conteneur qui a été arrêté :

```
docker start <id du conteneur>
```

### 💻 Interagir avec un conteneur déjà démarré

Permet d'exécuter des commandes dans un conteneur actif :

```
docker exec -it <id du conteneur> bash
```

### 🔄 Redémarrer et interagir avec un conteneur (en une seule commande)

Combine le redémarrage et l'interaction immédiate :

```
docker start -ai <id du conteneur>
```

---

# 📦 Volumes Docker

## 🗂️ Mappé

Lancer un conteneur avec un volume mappé entre un dossier local et un dossier du conteneur :

```
docker run -it -v <dossier local>:<dossier conteneur> <nom de l'image>
```

## 🛠️ Gestion des Volumes

### ➕ Créer un volume

Crée un volume nommé pour un stockage persistant :

```
docker volume create <nom du volume>
```

### 🔍 Lister les volumes existants

Affiche tous les volumes existants sur la machine :

```
docker volume ls
```

### 🗑️ Supprimer un volume

Supprime un volume inutilisé :

```
docker volume rm <nom du volume>
```

### 🔗 Lier un volume à un conteneur

Associe un volume existant à un conteneur :

```
docker run -it -v <nom du volume>:<dossier conteneur> <nom de l'image>
```

### ℹ️ Obtenir des informations sur un volume

Affiche des détails sur un volume spécifique :

```
docker volume inspect <nom du volume>
```

---

# 🌐 Réseaux Docker

## 🔄 Mapper des ports

Expose un port local à un port d'un conteneur :

```
docker run -p <port local>:<port conteneur> <nom de l'image>
```

## 🛠️ Commandes réseau Docker

### Lister les réseaux Docker existants

Affiche les réseaux créés sur votre machine :

```
docker network ls
```

### Isoler un conteneur du réseau

Démarre un conteneur sans connexion réseau :

```
docker run --network=none <nom de l'image>
```

### Créer un réseau Bridge personnalisé

Permet de créer un réseau isolé avec le pilote `bridge` :

```
docker network create --driver=bridge <nom du réseau>
```

### Créer et connecter un conteneur à un réseau

Associe directement un conteneur à un réseau :

```
docker run --network=<nom du réseau> --name=<nom du conteneur> <nom de l'image>
```

### Connecter un conteneur à un réseau existant

Connecte un conteneur existant à un réseau :

```
docker network connect <nom du réseau> <nom du conteneur>
```

### Lister les conteneurs d'un réseau

Affiche les détails des conteneurs dans un réseau spécifique :

```
docker network inspect <nom du réseau>
```

### Déconnecter un conteneur d'un réseau

Supprime la connexion d'un conteneur à un réseau :

```
docker network disconnect <nom du réseau> <nom du conteneur>
```

### Supprimer un réseau

Efface un réseau inutilisé :

```
docker network rm <nom du réseau>
```

---

# 🔧 Commandes système utiles (hors Docker)

## Installer des outils pour tester la connectivité réseau

Met à jour les paquets et installe les utilitaires réseau tels que `ping` et `ip` :

```
apt update && apt install -y iputils-ping iproute2
```

## Afficher les adresses IP dans un conteneur

Utiliser la commande `ip` pour voir la configuration réseau :

```
ip -c a
```

---

✨ Happy Dockering! 🐋
