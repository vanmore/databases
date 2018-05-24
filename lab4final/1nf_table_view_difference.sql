SELECT 
    *
FROM
    1nf_view
        LEFT JOIN
    1nf_teams ON 1nf_view.id = 1nf_teams.id
WHERE
    1nf_view.id IS NULL OR 1nf_teams.id IS NULL;
