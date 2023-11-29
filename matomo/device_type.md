# För att mappa device type korrekt

Skapa en calculated field med den här CASE-satsen:

```sql
CASE [Config Device Type]
    WHEN 0 THEN 'DESKTOP'
    WHEN 1 THEN 'SMARTPHONE'
    WHEN 2 THEN 'TABLET'
    WHEN 3 THEN 'FEATURE_PHONE'
    WHEN 4 THEN 'CONSOLE'
    WHEN 5 THEN 'TV'
    WHEN 6 THEN 'CAR_BROWSER'
    WHEN 7 THEN 'SMART_DISPLAY'
    WHEN 8 THEN 'CAMERA'
    WHEN 9 THEN 'PORTABLE_MEDIA_PAYER'
    WHEN 10 THEN 'PHABLET'
    WHEN 11 THEN 'SMART_SPEAKER'
    WHEN 12 THEN 'WEARABLE'
    WHEN 13 THEN 'PERIPHERAL'
    -- Lägg till ytterligare mappningar här
    ELSE 'Okänd'
END
```
