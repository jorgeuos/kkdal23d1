-- För att exportera rådata från Matomo så kan man använda denna SQL-fråga:
SELECT *
FROM matomo_log_visit
LEFT JOIN matomo_log_link_visit_action ON matomo_log_visit.idvisit = matomo_log_link_visit_action.idvisit
LEFT JOIN matomo_log_action ON matomo_log_action.idaction = matomo_log_link_visit_action.idaction_url
LEFT JOIN matomo_log_conversion ON matomo_log_visit.idvisit = matomo_log_conversion.idvisit
LEFT JOIN matomo_log_conversion_item ON matomo_log_visit.idvisit = matomo_log_conversion_item.idvisit;


-- Officiella dokumentationen för Matomo finns här: https://matomo.org/faq/how-to/faq_24536/
