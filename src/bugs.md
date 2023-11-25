# Bugs

Evidemment l'application contiendra des bugs, je vais essayer de lister ici les plus connus et donner une ou plusieurs méthodes pour les régler

## NFC

### Symptomes:

- Le code pin ne se déclenche plus lorsque l'on badge sa carte

### Causes potentielles:

- Le service nfc d'une manière ou d'une autre, cause exacte inconnue à ce jour

### Informations techniques

Le nfc fonctionne à l'aide d'un executable qui fournit à la page l'identifiant de la carte. Il est lancé au démarrage à l'aide d'un service, qui définit sous quelles conditions et comment lancer un executable. le statut d'un service est accessible par la commande `systemctl restart [nom du service (ici nfc)]`.

### Fix:

Il suffit de redémarrer le service nfc:

```bash
systemctl restart nfc # redémarre le service
systemctl status nfc # permet d'accéder au statut et de vérifier qu'il a été redémarré

```
