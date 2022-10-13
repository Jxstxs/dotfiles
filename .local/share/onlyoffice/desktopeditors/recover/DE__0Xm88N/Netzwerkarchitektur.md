# Warum Netzwerke

* Resource Sharing (Drucker, Kamera, Speicher(NAS), ...)
* Data Sharing
* Software Sharing
* Processor Sharing
* Sicherheits Verbund
* Entfernte Verwaltung
* Informations Austausch

## Vor und Nachteile

* Resource Sharing:

|Vorteile|Nachteile|
|-|-|
|jeder kann alle geräte nutzen (außer freigaben)|überforderung von einer resi|
|einmalige beschaffungskosten||

* Data Sharing:

|Vorteile|Nachteile|
|-|-|
|datenaustausch in echtzeit|zugriffe regeln|
|effizientere speicher nutzung|genügend speicher zur verfügung zustellen|

* Software Sharing:

|Vorteile|Nachteile|
|-|-|
|speicher nutzung geringer|fehlende individualisierung|

* Processor Sharing:

|Vorteile|Nachteile|
|-|-|
|einmalige beschaffungskosten|überforderung des Processor|
|effizientere hardware nutzung|verwaltung der resourcen|

* Sicherheits Verbund:

|Vorteile|Nachteile|
|-|-|
|leichter zu verwalten|ein fehler in der verwaltung gesamter fehler im netzwerk|
|einfacher zu sichern||

* Informations Austausch:

|Vorteile|Nachteile|
|-|-|
|beinahe echtzeit datenübertragung|schadstoftware|

# Berechnung Übertragungszeit

MiByte (alles mit i)-> mit 1024 !!!!!!!!!!
MB -> mit 1000

V = Dateigröße / Zeit
Datengröße = 800 Mib
           = 800 * 1024 KiByte
           = 800 * 1024² Byte
           = 800 * 1024² * 8 Bit

...

**in sinnvole zeitangabe umrechnen**

# Übertragungsarten

* Kupferkabel
* Glasfaser
* Funknetz

## Kupferkabel

* Aufbau: Außenmantel, Masse, Isolation, Kupferleitung
* Max Übertragung 500Mb/s auf kurze distanz
* Übertragungsart: Elektrische Signale
* Kabeltyp: n Base m (n MBit/s; leiterlänge in 100m)

## Glasfaser [Lichtwellenleiter -> lwl]

* Aufbau: Hülle, Lackierung, Mantel, Kern
* Arten:
  * Festader: ader in fester hülle
  * Kompaktader: ader lose in hülle
  * Hohlader: gefüllt: ader in gel; ungefüllt: ader in hülle
  * Bündelader: wieh Hohlader bloß mit mehreren adern
  * Mehrader: paralele übertragung um störung zu minimieren
* Übertragungsart: Lichtsignal (werden mit dioden erzeugt; funktioniert mit totalreflexion -> optisch dünneres medium mit opt. dichteres medium)
* Probleme: extreme Krümung/ knick im kabel -> totalreflexion nicht mehr möglich

## Funknetze

* Aufbau: Sender, Empfänger, netzwerkkarte, Access Point
* Arten:
  * private Anwendung: 4-21MHz; >22MB/s; 10-50m 
  * industrie Anwendung: 1-6(2,4-5)GHz; 11-54MB/s; <1Km

# Dämpfung (Dispersion)

* ist die beschränkung der reichweite zur übermittlung von daten
* ausbreitungsgeschwindigkeit hängt von wellenlänge ab
* dB/Km -> gibt die Dämpfung an (ergibt sich aus quotient anfangsintensität und entintensität)

## Gründe

* Widerstand des Kabels (kupfer)
* Äußere Einwirkungen: strahlungen, ... [störsignale]
* Innere Einwirkungen: kabel die daneben liegen
* Absorption: Elektronen werden vom leiter "verschlukt"
* Wärmerauschen: durch Erhitzen wird die frequenz manipuliert

## Minderung

* durch beugung statt reflektion
* Verwendung von Laserdioden
* geringer durchmesser der faser

## Faustregel

* je kürzer die wellenlänge des lichtes desto größer die übertragungsgeschwindigkeit und kurzer die übertragungslänge

---

# Topologien

* logisch: beschreibt Aufbau der Hardware
* physisch: beschreibt Nutzung der Netze

## Geräte

* Hub(Layer 1): verbindet Netzwerk-Komponenten; sendet Datenpakete an alle Geräte; Bitübertragung und "regeneriert" diese
* Switch(Layer 2): verbindet Netzwerk-Komponenten; sendet Datenpakete(Frames) nur an Zielgeräte; addressierung per Mac-Addresse
* Router(Layer 3): verteilen Datenpakete zwischen mehreren Rechnernetzen per IP-Addresse
* Repeater: Bitübertragung; nur verstärkung

* **bei physischer verbindung kein hub oä. nötig**

## Bus-Topologie

* nur per kabel verbunden (nur eins)
* einfach zu erstellen
* anfällig und schwer zu verwalten

## Stern-Topologie

* zentrale einheit nötig (hub [wird zu bus], layer 2 switch besser)
* logisch wie Bus-Topologie -> da keine addressierung möglich
* leicht zuverwalten; leichte fehlersuche
* hoher datendurchsatz möglich
* evtl hohe kosten; viel kabelmanagment

## Ring-Topologie

* optimierbar, da vor und nachgänger klar definiert
* geringer kabelaufwand
* leicht erweiterbar

## Maschen-Topologie

* alles mit allem verbunden
* ausfall "egal" da weiterhin andere verbindungen vorhanden sind
* hohe leistung
* wartungs schwer; viel kabelmanagment

## Baum-Topologie

### hierarchischer Baum

* klar strukturiert
* von zentralem zugang zu end gerät
* für subnetze router benötigt
* sicherer
* gezielte weiterleitung von daten durch broadcast ip

### nicht hierarchischer Baum

* zusammenschluss von mehreren Topologien


# OSI-7-Schichtmodell(Open System Interconnection)

* herstellerunabhängig
* Schichteinteilung erfolgt durch klar definierte Schnittschtellen -> einzelne Schichten können angepasst oder ausgetauscht werden; übertragungsmedium nicht festgelegt
* Schicht 1-4: Transportorientiert
* Schicht 5-7: Anwendungsorientiert
* Protokolle sind transparent, können sich über mehrere Schichten erstrecken und können mehrere Aufgaben erfüllen
* __Protokolle__: sammlung von Regeln zur Kommunikation auf bestimmten Schichten
* Endgeräte und Übertragungsmedium werden nicht betrachtet
* je höher die schicht desto abstrakter die funktion
* Daten "laufen" von "unten" nach "oben" (Sender) und von "oben" nach "unten" (Empfänger). Logisch gesehen jedoch Horizontal
* Punkt zu Punkt: direkte Verbindung (klar definiert)
* Ende zu Ende: verbindung über server,... 
* Schichten:
  1. Bitübertragungsschicht: (HUB, Kabel, Funksignale)
  2. Sicherungsschicht: adressierung und prüfen ob die daten korrekt sind ()
  3. Vermittlungsschicht: schalten der Verbindungen und weitervermittlung von Datenpaketen
    * IP
    * Wegsuch Dienst: basiert auf Punkt zu Punkt verbindung; Paktete werden nur an den nächsten Knoten gesendet
    * Pflege der Kommunikationswege: gewährleistung der Aktualität
    * eindeutige Netzwerkadressen: öffentliche und private Adressen
  4. Transportschicht: segmentierung und stauvermeidung von Datenpacketen (congestion control); ermöglicht einheitlichen zugriff auf 5-7. Schicht; 5 verschiedene dienstklassen unterschiedlicher güte sind definiert und können von höheren Schichten genutzt werden (einfache, Fehlersicherung, Fehlerbehebung, ...)
    * TCP
    * einheitlicher Transportdienst (Byte Strom): Pakete kommen fehlerfrei an; erfolg wird mit rückmeldung erreicht
    * Endsystem zu Endsystem Verbindung (Vollduplex): unterteilt verbindung in ports
    * segmentireihenfolge: erzeugt pakete und setzt sie wieder zusammen
  5. Sitzungsschicht: minimiert schaden von abbrüchen bei der datenübertragung durch checkpoints
  6. Darstellungschicht: erzeugt systemunabhängige Daten um syntaktisch korrekten datenaustausch zuermöglichen; Datenkompression und Verschlüsselung
  7. Anwenderschicht: dient der ein und ausgabe (für untere Schichten); bietet vielzahl an Funktionalität (Email, Remote Login, ..)

# IP-Addressen 

* IPv4: 4 Octeten, binär/dual
* IPv6: 16 Octeten, ~ - ~/hexadezimal

* Netzwerkmaske: besteht aus block von 1 (10..|110..|1110..|.....|11111111)
* CIDR: IP|NM|NWA|BCA / CIDR -> anzahl der 1
* Netzwerkadresse berechnen: IP AND MASKE (erste IP Adresse des Netzwerkes)
* Broadcastadresse berechnen: IP OR !MASKE (letze IP Adresse des Netzewerkes)
* wegen erster und letzer Adresse -2 bei Hostsanzahl

* abweichung des netzanteils -> Host nicht enthalten

* Host berechnen: 2^n-2 (n: anzahl bits die von netzwerkmaske ausgelassen werden)
