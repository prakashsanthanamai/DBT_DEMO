{% macro get_season(X) %}

CASE 
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN (12,1,2) THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN (3,4,5) THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN (6,7,8) THEN 'SUMMER'
    ELSE 'AUTUMN'
END

{% endmacro %}

{% macro day_type(X) %}

CASE 
    WHEN DAYNAME(TO_TIMESTAMP({{X}})) IN ('Sat','Sun') THEN 'WEEKEND'    
    ELSE 'BUSINESSDAY'
END

{% endmacro %}