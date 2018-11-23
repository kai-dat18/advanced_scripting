"""

Zweck:

Damit wir mehrere Übungslösungen auf github haben können ist eine Struktur nötig.
Mein Vorschlag ist die gleiche Verzeichnisstruktur wie bei der Übung zu verwenden, in jedes Task-Verzeichnis kann jeder
ein File adden, mit seinem Namen + Dateiendung (.R oder .py).
Dieses Script sucht die R und py Files und kopiert sie mit dem neuen Namen (w.o. beschrieben) in eine neue Verzeichnisstruktur,
die du für den Commit verwenden kannst.

Verwendung:

1.) leg ein Verzeichnis an in das du alle Files kopierst die du auf Github geben willst.
Die Verzeichnisstruktur ist genau die gleiche wie in der Übung. Wenn du alles committen willst kopierst du einfach alle
Exercise-Verzeichnisse.
Dieses Script in das gleiche Verzeichnis kopieren.
z.b.
./Exercise01/Python/ ...
./Exercise01/R/ ...
./create_github_structure.py

2.) Script konfigurieren. Du kannst deinen Namen (Kurzname, nicht VN+NN) in die Variable 'default_user_name' eintragen.
Unter diesem Namen werden die Files (.R und .py) im Repository abgelegt.

3.) Script starten ("create_github_structure.py") - entweder per Kommandozeile oder Run im PyCharm!
Du hast mehrere Möglichkeiten:

a) du kannst deinen Namen per Kommandozeilenparameter eingeben.
z.B. "create_github_structure.py --name Franzi"

b) Du kannst das Script mit der Option "--simulate" starten, dann werden die geplanten Operationen nur ausgegeben und
nicht durchgeführt.
"create_github_structure.py --simulate"
Es empfiehlt sich beim 1. Mal zu simulieren um zu überprüfen ob nicht zu viel kopiert wird, falls z.B. der Kontext nicht passt.
Das kann z.B. passieren wenn du das Script per Shift/Alt/e startest.
Du kannst das Simulieren auch direkt im Script einschalten (an geeigneter Stelle).

4.) Wenn das Script (ohne simulate) gestartet wurde legt es parallel zum aktuellen Verzeichnis ein neues mit Namen
"github_structure" an, in dem die neue Struktur angelegt wird.

5. spätestens jetzt sollst du das Rspository
https://github.com/kai-dat18/advanced_scripting_github
klonen.

6. Füge deine Ordner aus "github_structure" in das geklonte Repository ein - die Files werden in die entsprechenden Unterordner
kopiert. Falls du andere Files dazugeben willst kannst du das jetzt machen. Kontrolliere ob alles passt!

7. Deine Files adden, committen und pushen (wenn du bereits Collaborater bist, sonst bitte melden!)

Optional kannst du mit einem absoluten Pfad arbeiten in dem du ihn in die Variable "start_dir" einträgst.

"""

from pathlib import Path
import shutil
import argparse
import sys


default_user_name = ''


destination_folder_name = 'github_structure'
script_name = 'create_github_structure.py'

base_dir = Path('.')
destination_folder = base_dir / '..' / destination_folder_name


def copy_file_into_target_folder(filename, user_name, simulate):
    if filename.stem + filename.suffix == script_name:
        # Don't copy this script
        return
    target_path =  Path(destination_folder / filename.parent) / (user_name + filename.suffix)
    print (f'Copy {str(filename)} -> {str(target_path)}')
    if not simulate:
        dir = Path(destination_folder / filename.parent)
        if (not dir.exists()):
            dir.mkdir(parents=True)
        shutil.copy(str(filename), str(target_path))


def generate_github_files(user_name, simulate):
    print (f'Base directory: {base_dir.absolute()}')
    if destination_folder.exists():
        print(f'Delete {destination_folder}')
        if not simulate:
            shutil.rmtree(destination_folder, ignore_errors=True)
    [copy_file_into_target_folder(filename, user_name, simulate) for filename in base_dir.glob('**/*.r')]
    [copy_file_into_target_folder(filename, user_name, simulate) for filename in base_dir.glob('**/*.py')]


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Create file structure for github.')
    parser.add_argument('--name', help = 'your name', default = default_user_name)
    parser.add_argument('--simulate', help = 'check to simulate', action = "store_true")
    args = parser.parse_args()
    if args.name == '':
        print ("Es muss ein Benutzername angegeben werden! (Entweder im Script oder per Kommandozeilenparameter.)")
        sys.exit(1)
    generate_github_files(args.name, args.simulate)
