# 📚 Überblick über die Dokumentation

Willkommen im Dokumentationsbereich, hier finden Sie alle notwendigen Unterlagen.

## 🏴 Übersetzungen dieser Datei

* <a href="README.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/gb.svg" alt="README.md" style="height: 20px !important;width: 20px !important;"> Englisch
  </a> 

* <a href="README.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/es.svg" alt="README_ES.md" style="height: 20px !important;width: 20px !important;"> Spanisch
  </a> 

## 📚 Inhaltsübersicht

### 📥 Einrichtung

- [Direkter Einbau](/docs/DIRECT_INSTALLATION.md)
- [Docker container](/docs/DOCKER_INSTALLATION.md)

### 📥 Konfiguration

- [Script Purge Cloudflare Cache](/docs/PURGE-CLOUDFLARE-CACHE.md)

### 🐛 Hilfe & Tipps zur Fehlersuche

- [Tipps zur Fehlersuche](/docs/DEBUG_TIPS.md)

## 👨‍💻 Prioritäten der Entwicklung

Prioritäten von oben nach unten:

* 🔼 Behebung von Fehlern in der Kernfunktionalität, die nicht mit Workarounds gelöst werden können
* 🔵 Neue Kernfunktionalität, die andere Möglichkeiten eröffnet (z.B.: Plugins) 
* 🔵 Refactoring zur schnelleren Implementierung zukünftiger Funktionen 
* 🔽 (geringe) UI-Funktionalität & Verbesserungen (PRs willkommen 😉 )

Design-Philosophie: Konzentrieren Sie sich auf die Kernfunktionen und nutzen Sie bestehende Anwendungen und Tools, um Cloudflare-CLI in andere Arbeitsabläufe zu integrieren. 

Beispiele: 

    1. Die Unterstützung von apprise ist sinnvoller als die Implementierung mehrerer einzelner Benachrichtigungs-Gateways
    2. Die Unterstützung von regulären Ausdrücken in allen Einstellungen für die Validierung ist sinnvoller als die Validierung einer Einstellung mit einem bestimmten Ausdruck. 

UI-spezifische Anforderungen haben eine geringe Priorität, da das vom ursprünglichen Entwickler gewählte Framework nicht sehr erweiterbar ist (und afaik keine Komponenten unterstützt) und nur begrenzte Unterstützung für mobile Geräte bietet. Außerdem argumentiere ich, dass der Nutzen geringer ist als die Arbeit an etwas anderem.

Sie können gerne PRs einreichen, wenn Sie daran interessiert sind. Versuchen Sie, die PRs **klein und themenbezogen** zu halten, damit sie leichter zu prüfen und zu genehmigen sind. 

Davon abgesehen würde ich es mir noch einmal überlegen, wenn mehr Leute und/oder wiederkehrende Sponsoren einen Antrag stellen 😉.

## 🙏 Funktionswünsche

Bitte geben Sie so detailliert wie möglich an, welche **Arbeitsumgehungen** Sie in Betracht gezogen haben und warum eine native Funktion die bessere Lösung ist. Das gibt mir einen besseren Kontext und macht es wahrscheinlicher, dass es implementiert wird. Idealerweise sollte eine Feature-Anfrage in dem Format "Ich möchte XYZ machen können, damit ZYX. Ich habe diese Ansätze in Betracht gezogen XYZ".

## ➕ Pull requests (PRs)

Wenn Sie eine PR einreichen, bitten wir Sie:

1. Prüfen Sie, ob Ihre Änderungen mit bestehenden Installationen und mit einem leeren Setup rückwärtskompatibel sind. 
2. Bestehende Funktionen sollten immer erhalten bleiben. 
3. Halten Sie den PR klein, zum Thema passend und ändern Sie keinen Code, der nicht notwendig ist, damit der PR funktioniert.
4. Der Code neuer Funktionen sollte idealerweise für verschiedene Zwecke wiederverwendbar sein und nicht nur für einen sehr engen Anwendungsfall.
5. Neue Funktionen sollten idealerweise über das Plugins-System implementiert werden, wenn möglich.

## 🐛 Einreichen eines problems oder fehlers

Bevor Sie eine neue Ausgabe einreichen, nehmen Sie sich bitte ein paar Minuten Zeit für die Recherche:

* Prüfen Sie [🛑 Allgemeine Probleme](/docs/COMMON-ISSUES.md) 
* Prüfen Sie [💡 Geschlossene Probleme](https://github.com/cvc90/Cloudflare-CLI/issues?q=is%3Aissue+is%3Aclosed), wenn ein ähnliches Problem in der Vergangenheit gelöst wurde.
* Beim Einreichen eines Problems ❗[Debug aktivieren](/docs/DEBUG_TIPS.md)❗

⚠ Bitte folgen Sie der vordefinierten Vorlage, um Ihr Problem schneller zu lösen.
