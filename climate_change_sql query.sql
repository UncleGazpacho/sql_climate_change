--#1--
SELECT *
FROM state_climate;

--#2--
SELECT
  state,
  year,
  tempc,
  AVG(tempc) OVER(
    PARTITION BY state
  ) running_avg_temp 

FROM
  state_climate;

--#3--
SELECT
  state,
  year,
  tempc,
  FIRST_VALUE(tempc) OVER(
    PARTITION BY state
    ORDER BY tempc
  ) lowest_temp 

FROM
  state_climate;

--#4--
SELECT
  state,
  year,
  tempc,
  LAST_VALUE(tempc) OVER(
    PARTITION BY state
    ORDER BY tempc
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) highest_temp 

FROM
  state_climate;

--#5--
SELECT 
  state,
  year,
  Round(tempc) tempc,
  Round(tempc - LAG(tempc,1,0) OVER(
    PARTITION BY state
    ORDER BY year),2) change_in_temp

FROM 
  state_climate
  
ORDER BY change_in_temp DESC;


--#6--
SELECT
  year,
  state,
 tempc,
  RANK() OVER(
    ORDER BY tempc) coldest_rank

FROM
  state_climate;


--#7--
SELECT
  year,
  state,
  tempc,
  RANK() OVER(
    ORDER BY tempc DESC) warmest_rank

FROM
  state_climate;


--#8--
SELECT
  NTILE(4) OVER(
    PARTITION BY state
   ORDER BY year) quartile,
  year,
  state,
  tempc

FROM
  state_climate

ORDER BY tempc;

--#9--
SELECT
  NTILE(5) OVER(
   ORDER BY year) quintile,
  year,
  state,
  tempc

FROM
  state_climate

ORDER BY tempc;