function z = gcd(x,y)
    if y == 0
        z = x
    
    else
        z = gcd(y , mod(x,y))
    end

end