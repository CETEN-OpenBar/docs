# Installation du comptoir

Pour installer le comptoir, il vous faudra:

- le package firefox
- une version locale du dépôt nfc voir
  [ici](https://github.com/CETEN-openbar/bar/releases)
- un éditeur de texte
- les droits d'administrateur sur le pc

Dans un premier temps, installez les dépendances à l'aide de la commande
suivante:

```bash
sudo apt install pcsc-tools pcscd libpcsclite-dev libpcsclite1 libusb-dev libnfc-bin libnfc-dev libnfc5
```

Une fois ces dépenances installées, ajoutez un fichier
`/etc/modprobe.d/blacklist.conf` contenant les lignes suivantes

```conf
blacklist pn533
blacklist pn533_usb
blacklist nfc
```

## À quoi servent ces étapes ?

Le lecteur nfc fonctionne à l'aide d'un service qui entre en conflit avec
certains drivers que nous avons blacklistés. Il dépend des packages précédemment
installés.

## Installation du service nfc

Afin que le service (executable en tache de fond pour vulgariser) soit lancé au
démarrage, il faut télécharger le tar.gz nfc qui se trouve ici
[ici](https://github.com/CETEN-OpenBar/bar/releases/). À l'intérieur, vous
trouverez un fichier `.service` que vous devrez placer dans
`/etc/systemd/system/nfc.service` Le second est un executable auquel il faut
ajouter les droits avec

```bash
chmod +x nfc
```

Pour vérifier l'installation, redémarrez le pc et lancez la commande:

```bash
systemctl status nfc
```

Une fois installé une première fois, l'executable se mettra à jour
automatiquement si une nouvelle version est disponible.
