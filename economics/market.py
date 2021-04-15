def elasticity(price0, price1, amount0, amount1):
    price_change_pct = (price1 - price0) / (price0 + price1) / 2
    amount_change_pct = (amount1 - amount0) / (amount0 + amount1) / 2
    return abs(price_change_pct / amount_change_pct)