function z = mp_inv(x,y)
    m = extended_gcd(x,y)
    if m(1)==1
        z = mod(m(2), y)
end