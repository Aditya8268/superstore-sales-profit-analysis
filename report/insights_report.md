# Why Are Some High-Selling Products Losing Money?
## Superstore Sales & Profitability: Insights Report

## 1. Summary
Over 2014-2017 the company made $2,297,200.86 in sales and $286,397.02 in profit
(a 12.47% margin). Profit is uneven: Tables, Bookcases and Supplies lose
money overall, and the main driver is heavy discounting. Orders with a
21-30% discount already have a margin of about -10%.

## 2. Key findings

**Finding 1: Three sub-categories lose money.**
Tables, Bookcases and Supplies have negative total profit, together losing
$22,545.53 on $367,870.96 of sales.

**Finding 2: Discounts above 20% destroy profit.**
Orders with no discount earn a 	7.92% margin. The 21-30% discount band is
the first one with a negative margin, at about -10%.

**Finding 3: The Central region is the weakest.**
Central has the lowest profit margin of any region (7.99%, versus 14.90%
in West). Its biggest single problem is Furnishings, which lost
$3,906.22 in Central.

**Finding 4: A few products cause outsized losses.**
The Cubify CubeX 3D Printer (Double Head Print) lost $8,879.97, the
Lexmark MX611dhe Monochrome Laser Printer lost $4,589.97, and the Cubify
CubeX 3D Printer (Triple Head Print) lost $3,839.99. These three products
alone lose about $17,300.

**Finding 5: Seasonality.**
Sales peak in November, December and September each year. Margins in those months are
lower than in quieter months.

**Finding 6: Customer segments (RFM).**
Champions are the biggest segment by sales ($675,849.82). 80 customers
fall into "At Risk (Big Buyers)": they spent heavily in the past but have
not ordered recently.

## 3. Recommendations
1. **Cap discounts at 20%.** Anything above that turns the margin
   negative. Apply this first to Tables, Bookcases and Supplies.
2. **Review pricing and discounts in the Central region**, especially
   for Furnishings.
3. **Review the three worst products** (two Cubify 3D printers and the
   Lexmark laser printer): raise the price, reduce the discount, or stop
   selling them.
4. **Run a win-back campaign for the 80 At Risk (Big Buyers)** customers
   (for example, a personal offer that does not rely on deep discounts).
5. **Set margin limits on year-end promotions**, since that is when
   volume is highest and the temptation to discount is strongest.

## 4. How the analysis was done
- SQL (MySQL Workbench): cleaning, aggregation, discount and trend analysis
- Python (pandas): cleaning, charts, RFM segmentation
- Power BI: 3-page interactive dashboard

## 5. Limitations
- The data covers 2014-2017 only.
- There is no cost, returns, or marketing-spend data.
- Discounts and losses move together, but this analysis does not prove
  that discounts alone caused the losses.