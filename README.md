# kkdal23d1
Kursmaterial - Matomo, Tableau, SQL


## Tableau

CSV filer till Tableau hittar ni här: [./tableau/csv](./tableau/csv)

```bash
tableau/csv/matomo_log_action_202311281945.csv
tableau/csv/matomo_log_conversion_202311281945.csv
tableau/csv/matomo_log_conversion_item_202311281945.csv
tableau/csv/matomo_log_link_visit_action_202311281945.csv
tableau/csv/matomo_log_visit_202311281943.csv
```


## Matomo

Fullständig databasdump till MySQL hittar ni här: [./matomo/demosajt.sql.zip](./matomo/demosajt.sql.zip)

## SQL

Absolut enklaste när du har installerat MySQL, är att copy-paste:a SQL-koden från [./sql/queries.sql](./sql/queries.sql) till din MySQL prompt eller det system du använder.


## Om ni vill installera Mysql så kommer en kort guide här:

Det finns olika sätt att installera MySQL på, beroende på vilket operativsystem du använder. Här är några av de vanligaste metoderna:

### Installera MySQL på en Mac med Homebrew:

Om du inte redan har Homebrew installerat, öppna ett terminalfönster och kör följande kommando:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

När Homebrew är installerat, kör följande kommando för att installera MySQL:

```bash
brew install mysql
```

När installationen är klar, kör följande kommando för att starta MySQL-servern:

```bash
brew services start mysql
```

Slutligen, för att kontrollera att MySQL är korrekt installerat, öppna ett terminalfönster och skriv mysql -u root -p. Du kommer att bli ombedd att ange ett lösenord för root-användaren. Om allt är korrekt, bör du nu vara inloggad på MySQL-servern.

### Installera MySQL på en Mac med MySQL Installer:

Ladda ner MySQL Installer från MySQL:s officiella webbplats. Välj den version som passar ditt operativsystem.

Öppna den nedladdade .dmg-filen och följ installationsguiden.

Under installationen kommer du att bli ombedd att ange ett lösenord för root-användaren. Kom ihåg detta lösenord eftersom du kommer att behöva det senare.

Efter att installationen är klar, öppna System Preferences och klicka på MySQL-ikonen. Starta MySQL-servern härifrån.

Slutligen, för att kontrollera att MySQL är korrekt installerat, öppna ett terminalfönster och skriv mysql -u root -p. Du kommer att bli ombedd att ange det lösenord du angav under installationen. Om allt är korrekt, bör du nu vara inloggad på MySQL-servern.

Observera att detta är en grundläggande installation och kanske inte passar alla användares behov. För mer avancerade inställningar, se den officiella MySQL-dokumentationen.


### Installera MySQL på Windows:

Ladda ner MySQL Installer från MySQL:s officiella webbplats. Välj den version som passar ditt operativsystem.

Öppna den nedladdade .msi-filen och följ installationsguiden.

Under installationen kommer du att bli ombedd att ange ett lösenord för root-användaren. Kom ihåg detta lösenord eftersom du kommer att behöva det senare.

Efter att installationen är klar, öppna MySQL Command Line Client och skriv in det lösenord du angav under installationen. Om allt är korrekt, bör du nu vara inloggad på MySQL-servern.

Observera att detta är en grundläggande installation och kanske inte passar alla användares behov. För mer avancerade inställningar, se den officiella MySQL-dokumentationen.

