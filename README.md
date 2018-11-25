# HomeAutomation-RemoteControl
MQTT Wifi/BLE Remote control

## Besoin

### Problématique

Les volets roulants électriques sont équipés de modules domotique et s'ouvrent automatiquement au lever du soleil. Pour ce qui est de leur fermeture, le soir, chaque jour est une sitation différente assez imprédictible. L'idée est donc de pouvoir agir avec un moyen simple tel l'appui sur un bouton.
Un bouton 1-Click aurait pu faire l'affaire mais ne présente aucune évolutivité. Une télécommande plus complète permet aussi de se challenger ^^

### Cahier des charges

* **Pratique**
 * **Tenir dans la main**. Pas dans 2 mains, pas dans une main de géant.
 * **Actions rapides**. Par simple appui sur un bouton.
 * **Configurable**. Pour évoluer avec l'équipement de la maison et les besoins qui apparaîtront avec le temps. La saisie doit être ergonomique.
 * **Rechargeable**. Puisque sans fil. Pas sûr que ce soit super écolo mais j'apprendrai ainsi à gérer une batterie.
 * **Sans fil**. Ca semble évident.
 * **Lisible**. Ecran LCD, en relation avec la configurabilité.
 * **Utilisable dès la prise en main**. Ne pas attendre une sortie de veille trop longue.
* **Compatible**. Afin d'être utilisable avec un maximum de systèmes domotiques si jamais nous devions en changer.
* **Consommation réduite**. Pour le &laquo; léger &raquo; côté écolo.

## Conception

### Spécifications techniques

* **Tenir dans la main** : après mesure d'une main on obtient les dimensions L x l x h = 120 x 60 x 40 mm. Il faudrait que l'ensemble rentre dans ce volume.
* **Actions rapides** : 4 boutons poussoir aux couleurs habituelles sur les radiocommandes (rouge, vert, jaune, bleu).
* **Configurable** : encodeur rotatif avec interrupteur afin de naviguer aisément dans un menu, défilement des items sur l'écran LCD.
* **Rechargeable** : via la prise USB du module ESP.
* **Sans fil** : utilisation d'un ESP8266 ou ESP32 pour le Wifi voire le BLE.
* **Lisible** : écran LCD de 1,8".
* **Utilisable dès la prise en main** : capteur de secousse pour la détection.
* **Compatible** : protocole MQTT.
* **Consommation réduite** : mise en veille d'un maximum de composants (ESP, écran).

Utilisation des logiciels suivants :
* conception 3D : FreeCAD
* conception PCB : Fritzing + KiCAD
* préparation de l'impression 3D : Cura

### Maquette

La première étape consiste en la modélisation du volume. Une forme ovoïde semble facile à tenir.

L'écran, l'encodeur, les boutons et le module ESP ont des tailles bien déterminées. Commençons par les positionner.

Ensuite on peut chercher des composants adaptés à l'espace restant. Le plus volumineux d'entre eux est la batterie LiPo. 10 batteries sont étudiées, le modèle de 1200 mAh rentre convenablement sans déborder.

Voici l'esquisse résultant de cette étude :
![Esquisse n°1](/images/esquisse.png)


## Etude en cours

### Composants

 * le réglage du capteur de secousse est difficile. Il y a une bascule rapide lors de la manipulation du potentiomètre (10k&Omega;). Le réglage à peu près correct amène le potard à 2,22V de tension pour 3,3V à ses bornes. Soit environ 3,3k&Omega;/6,7k&Omega; de résistance (vérifier le calcul). Tester avec une résistance de 5,1k&Omega; ou 6,8k&Omega; et un potard de 1k&Omega; ou 2k&Omega; en série pour permettre un réglage plus fin. Utiliser un potard de précision (celui avec une vraie vis).
