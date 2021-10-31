-- boomBangs returns Boom or Bang if number from list is ODD
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]