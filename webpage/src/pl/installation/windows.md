# Zainstaluj w systemie Microsoft Windows™

Download the latest **Windows archive** from [QOwnNotes Releases on GitHub](https://github.com/pbek/QOwnNotes/releases) (look for a file called `QOwnNotes.zip`) and unzip it to anywhere you like. Nie ma potrzeby instalacji!

::: warning
Jeśli chcesz użyć **automatycznego aktualizatora**, rozpakuj go do miejsca, w którym Twoje konto użytkownika ma dostęp do zapisu. By default, your user account most likely **doesn't have write access** to places like `C:\Program Files (x86)` or `C:\Program Files`.
:::

Następnie możesz bezpośrednio uruchomić `QOwnNotes.exe` z folderu `QOwnNotes`, nie jest wymagana żadna instalacja.

### Tryb przenośny

Użyj `QOwnNotesPortable.bat`, aby uruchomić QOwnNotes w **trybie portable**, w którym wszystko (łącznie z notatkami) będzie przechowywane tylko w folderze `QOwnNotes`.

::: tip
Tryb przenośny nie jest potrzebny, jeśli po prostu nie masz uprawnień administracyjnych do komputera. QOwnNotes nie musi być instalowany!
:::

## Windows XP

Qt porzuciło wsparcie dla Windows XP w wersji 5.8, ale QOwnNotes jest teraz również zbudowany z Qt 5.7, aby umożliwić użytkownikom Windows XP dalsze korzystanie z niego.

Musisz samodzielnie pobrać plik ZIP z [AppVeyor](https://ci.appveyor.com/project/pbek/qownnotes/build/artifacts) i rozpakować go do folderu, który Ci odpowiada.

Następnie możesz bezpośrednio uruchomić `QOwnNotes.exe` z tego folderu, nie jest wymagana żadna instalacja.

::: wskazówka Info
Mechanizm automatycznej aktualizacji nie działa z kompilacją AppVeyor dla Windows XP!
Będziesz musiał sam pobrać nowe wersje.
:::

## Chocolatey

Istnieje pakiet QOwnNotes zarządzany przez społeczność w [Chocolatey](https://chocolatey.org/packages/qownnotes/).

Możesz go zainstalować za pomocą:

```shell
choco install qownnotes
```

## Scoop

Istnieje [utrzymywany przez społeczność pakiet QOwnNotes](https://github.com/ScoopInstaller/Extras/blob/master/bucket/qownnotes.json) w [Scoop](https://scoop.sh/). Jeśli dodasz zasobnik Extras, możesz go użyć do zainstalowania QOwnNotes w trybie przenośnym.

```shell
scoop bucket add extras
scoop update
scoop install qownnotes
```
