config {
  type: "table",
  schema: "olympics_analysis",
  name: "athlete_performance"
}

SELECT 
  a.ID,
  a.Name,
  a.Sex,
  a.Age,
  a.Team,
  n.region AS Country,
  a.Year,
  a.Season,
  a.City,
  a.Sport,
  a.Event,
  a.Medal
FROM 
  `project_name.olympics_analysis.raw_athlete_events` a
LEFT JOIN 
  `project_name.olympics_analysis.noc_regions_clean` n
ON 
  a.NOC = n.NOC
