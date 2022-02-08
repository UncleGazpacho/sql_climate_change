-- This is a practice project from **Codecademy.com**. All tasks and data came from it. --

# Climate Change

To practice whit window functions, you are going to use climate data from each state in the United States. 
These data will show the average annual temperature for each state – this is the average temperature of every day in all parts of the state for that year.
For this project, you will be working with one table:

----------------------

## Understanding the Data

1. Let’s see what our table contains.


## Aggregate and Value Functions

2. Let’s start by looking at how the average temperature changes over time in each state.
Write a query that returns the state, year, tempf or tempc, and running_avg_temp (in either Celsius or Fahrenheit) for each state.

3. Now let’s explore the lowest temperatures for each state.
Write a query that returns state, year, tempf or tempc, and the lowest temperature (lowest_temp) for each state.
Are the lowest recorded temps for each state more recent or more historic?

4. Like before, write a query that returns state, year, tempf or tempc, except now we will also return the highest temperature (highest_temp) for each state.
Are the highest recorded temps for each state more recent or more historic?
Let’s see how temperature has changed each year in each state.
    *  Write a query to select the same columns but now you should write a window function that returns the change_in_temp from the previous year (no null values    should be returned).
    *  Which states and years saw the largest changes in temperature?
Is there a particular part of the United States that saw the largest yearly changes in temperature?

5. Let’s see how temperature has changed each year in each state.
Write a query to select the same columns but now you should write a window function that returns the change_in_temp from the previous year (no null values should be returned).
Which states and years saw the largest changes in temperature?
Is there a particular part of the United States that saw the largest yearly changes in temperature?

## Ranking Functions

6. Write a query to return a rank of the coldest temperatures on record (coldest_rank) along with year, state, and tempf or tempc. Are the coldest ranked years recent or historic? The coldest years should be from any state or year.

7. Modify your coldest_rank query to now instead return the warmest_rank for each state, meaning your query should return the warmest temp/year for each state. Again, are the warmest temperatures more recent or historic for each state?

8. Let’s now write a query that will return the average yearly temperatures in quartiles instead of in rankings for each state.
Your query should return quartile, year, state and tempf or tempc. The top quartile should be the coldest years.
Are the coldest years more recent or historic?

9. Lastly, we will write a query that will return the average yearly temperatures in quintiles (5).
Your query should return quintile, year, state and tempf or tempc. The top quintile should be the coldest years overall, not by state.
What is different about the coldest quintile now?
