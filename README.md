# hackerrank-solutions
### Key Learnings 
> 1. When using WITH, we use a comma to join multiple CTEs.
> 2. We don't use a comma between GROUP BY and ORDER BY statements
> 3. REPLACE (column_name, '0 ', '')is used to remove 0 or any number, for example, from a string, and hence it always returns a string (text)
> 4. Therefore, to convert the string back to a number, we would need to cast it using CAST(... AS SIGNED)
> 5. CEIL is used to round to the nearest integer.
> 6. When we use COUNT(column_name), it returns the count of that column_name, along with NULL values
> 7. When there's no common column_name to make a join, we generally use JOIN only instead of a left or right join.
> 8. SELECT clause lets us select the columns we want, whereas ORDER BY lets us sort the final results .
> 9. Whenever we write NULL (without quotes) that means it's an empty state in a database, while NULL(with quotes) represents a string consisting of four letters.
> 10. We don't need conditional logic to handle sorting rules.By listing multiple columns in the ORDER BY clause (Grade DESC, Name ASC, Marks ASC), SQL automatically treats them as a sequential chain of tie-breakers.
> 11. We cannot select columns that are either not in group by or have aggregates over them when using group by clause.
> 12. When using multi-column filtering with tuples like (col1, col2) IN (SELECT col1, col2 FROM ...), the number and data types of the columns inside the subquery must match the number and types of the outer columns.
> 13. We use functions like power, sqrt, and round for mathematical calculations.
