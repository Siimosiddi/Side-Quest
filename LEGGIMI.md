# SIDE QUEST – progetto APK

Contiene la tua web app (`www/index.html`) già inserita in un wrapper Android (Capacitor).

## Metodo A – senza installare nulla (GitHub)
1. Crea un repository su github.com e carica **tutto il contenuto** di questa cartella
   (compresa la cartella nascosta `.github`).
2. Vai su **Actions** → "Build APK" → attendi ~5 minuti.
3. Nella pagina dell'esecuzione scarica l'artifact **side-quest-apk** (zip con `app-debug.apk`).
4. Copia l'APK sul telefono e aprilo (consenti "Installa app sconosciute").

## Metodo B – sul tuo computer
Servono Node 18+, JDK 17 e Android SDK (o Android Studio).
```
./build-locale.sh
```
L'APK esce in `android/app/build/outputs/apk/debug/app-debug.apk`.

## Note
- È un APK di debug: si installa direttamente. Per il Play Store serve un build release firmato.
- I dati (localStorage) restano salvati sul telefono.
- Il font Google (Space Grotesk) richiede internet; offline l'app usa il font di sistema.
- Per aggiornare l'app: sostituisci `www/index.html` e ricompila.
