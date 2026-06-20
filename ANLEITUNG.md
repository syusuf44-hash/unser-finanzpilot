# Unser FinanzPilot kostenlos einrichten

## 1. Sofort lokal testen

`index.html` über einen lokalen Webserver öffnen. Bonfotos und PDFs werden auf dem Gerät verarbeitet. Beim ersten Scan werden kostenlose OCR-Sprachdaten aus dem Internet geladen und anschließend vom Browser zwischengespeichert.

## 2. Kostenlos veröffentlichen

1. Ein kostenloses GitHub-Konto erstellen.
2. Ein öffentliches Repository `finanzpilot` anlegen.
3. Alle Dateien dieses Ordners hochladen.
4. Unter **Settings → Pages** die Veröffentlichung aus dem Hauptbranch aktivieren.
5. Die angezeigte HTTPS-Adresse auf Handy und Desktop öffnen.

Installation auf dem Handy:

- iPhone/iPad: Safari → Teilen → **Zum Home-Bildschirm**.
- Android: Chrome → Menü → **App installieren**.
- Desktop: Chrome/Edge → Installationssymbol rechts in der Adresszeile.

Die PWA ist damit auf Android und iOS wie eine App vom Home-Bildschirm aus nutzbar. Eine Veröffentlichung im Apple App Store ist nicht kostenlos; dafür verlangt Apple eine kostenpflichtige Developer-Mitgliedschaft. Für die private Nutzung ist die PWA deshalb die kostenlose Vollversion.

## 3. Kostenlose Synchronisierung aktivieren

1. Ein kostenloses Projekt bei Supabase anlegen.
2. Im **SQL Editor** den Inhalt von `supabase-schema.sql` ausführen.
3. Unter **Project Settings → API** die Project URL und den `anon public` Key kopieren.
4. In FinanzPilot unter **Einstellungen** URL, Key, E-Mail und ein Passwort eintragen.
5. **Anmelden / registrieren** wählen und gegebenenfalls die Bestätigungs-E-Mail öffnen.
6. Auf jedem Gerät dieselben Zugangsdaten verwenden und **Jetzt synchronisieren** wählen.

Der `anon public` Key darf in einer Browser-App verwendet werden. Der `service_role` Key darf niemals in FinanzPilot eingetragen oder veröffentlicht werden. Die SQL-Regeln sorgen dafür, dass angemeldete Personen nur ihre eigenen Buchungen sehen.

## Import und Dubletten

- Bonfoto: Händler, Datum, Gesamtbetrag und Kategorie werden lokal erkannt. Das Ergebnis erhält zunächst den Status **Ungeprüft**.
- Kontoauszug: Textbasierte PDFs werden lokal gelesen. Das Ergebnis hängt vom Layout der Bank ab; unsichere Dateien werden zur Prüfung markiert.
- Abgleich: FinanzPilot vergleicht Betrag, Buchungsdatum innerhalb von sieben Tagen und Händlerbegriffe. Ein passender Bon und Bankumsatz werden zu einer Buchung mit Status **Abgeglichen** zusammengeführt.
- Bei gescannten PDF-Auszügen ohne Text die Seiten als Bilder exportieren und über den Bon-/Fotoimport prüfen.

Wichtig: Automatische Erkennung kann Fehler machen. Vor einer finanziellen Auswertung sollten neue Importe geprüft werden.

## Monatlicher Bericht

Unter **Analysen** den Berichtsmonat wählen. Die App vergleicht automatisch die beiden davor vollständig abgeschlossenen Monate: Im Mai wird März mit April verglichen, im Juni April mit Mai. Angezeigt werden Gesamtausgaben, Veränderung, Sparbetrag, Kategorieabweichungen und konkrete Hinweise.

Transaktionen können vollständig geändert oder gelöscht werden. Kontostände, Budgets, Sparziele, Abonnements und die Namen beider Personen sind ebenfalls bearbeitbar und werden lokal gespeichert beziehungsweise nach Einrichtung synchronisiert.
