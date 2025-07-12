select * from finance_data

Q1. Count of Investors by Gender: How many male and female investors are there in the dataset?

 select gender , count(*) as gender_count
 from finance_data
 group by gender

Q2. Average Age of Investors: What is the average age of all investors in the dataset?

   SELECT AVG(CAST(age AS INTEGER)) AS average_age
FROM finance_data;

Q3. How many investors have opted for 'Investment Avenues' and how many have not?

    select investment_avenues, count(*) as avenues_count
	from finance_data
	group  by investment_avenues

Q4.  List all the unique investment objectives mentioned by the investors.

     select Distinct(objective) 
	 from finance_data
	  
Q5.  What are the top 3 most preferred investment avenues among investors?	

	 select avenue , count(*) as number_of_investors
	 from finance_data
	 group by avenue
	 order by number_of_investors desc
	 limit 3

Q6. Calculate the average age of investors for each investment objective.

   select objective , avg(cast(age as integer)) as avg_age
   from finance_data
   group by objective
   order by avg_age desc

Q7. How many male and female investors have 'Wealth Creation' as their primary investment objective? 

   SELECT objective, gender, COUNT(*) AS count
FROM finance_data
WHERE objective = 'Wealth Creation'
GROUP BY objective, gender;

Q8. Analyze the relationship between investment monitoring frequency and expected returns. Which monitoring frequency corresponds to which expected return most often?
SELECT gender, reason_equity, COUNT(*) AS count
FROM finance_data
WHERE stock_marktet = 'Yes'
GROUP BY gender, reason_equity
ORDER BY gender, count DESC;

Q9. Most Common Reason for Choosing Equity Market by Gender:

select reason_equity , gender, count(*) as count
from finance_data
group by reason_equity , gender
order by count desc



    