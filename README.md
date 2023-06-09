# stock_profits
# Calculate Stock Returns

‘Return’ refers to the amount of money that you make from your investment, expressed in percentage terms.


# Formula  stock return 

To calculate the total stock return I use this formula:
$r_j$ = $\frac{P_{t+1}}{P_t}$ - $\frac{P_t}{P_t}$ = $\frac{P_{t+1}}{P_t}$ - $1$
Where $r_j$ reflects the return on a stock $j$.

$P_{t+1}$  refers to the price at time $t+1$, that means the price you sell the stock for.

$P_t$ reflects the price at time $t$, that's the price you bought the stock for.

This formula holds regardless of whether you’re calculating the daily return, weekly return, monthly return, or annual return _depending on the data you’re working with.

##  Extracting Relevant Data
There’s quite a lot of things going on here but let’s just see what the information is.
<img width="1920" alt="Captura de pantalla 2023-04-19 a la(s) 19 40 42" src="https://user-images.githubusercontent.com/81563915/233237148-65bce846-f846-4f60-aaa7-711bcb0edb19.png">


We’ve got the  **Date**, which is the date of trading.

Then we’ve got  **Open**, which is the price at which the stock opened.

Next, we’ve got  **High**, which is the high point of the day – so that’s the highest price at which the stock traded at on the day.

**Low**  is the lowest point of the stock – so it’s the lowest price at which the stock traded at on the day.

**Close**  is what the stock closed at.

And  **Adjusted Close**  (aka Adjusted Closing Price) is pretty much the same as Close, except that it will also adjust for dividends.

When companies pay out dividends, the stock price actually decreases. And so the Adjusted Closing Price will factor in that change in price as a result of the dividends.


**Volume**  is just the number of trades that took place on the day.

For the purpose of what we’re trying to do here – to calculate stock returns – we don’t actually need all of this information.

We only really need the Date and Adjusted Close columns so we’re going to keep just those 2. And rename “Adjusted Close” to “Price”.


## How to Calculate Stock Returns on R

Calculating stock returns on R is actually incredibly straightforward.
https://github.com/thronOne97/stock_profits/blob/de7d26690b2bbd297e9bd3351c4d6152007114b7/stockprofits.R

While the prices sometimes appears predictable, they are not since returns follow a "random walk".

![Rplot22](https://user-images.githubusercontent.com/81563915/233237769-e9e9481b-71cb-4208-a936-46db4c17d63a.png)

Importantly, I base the investment decisions on "expected returns", not returns.

![Rplot02](https://user-images.githubusercontent.com/81563915/233237964-89bb3d66-61cd-47ec-a89b-d915bed6582b.png)
