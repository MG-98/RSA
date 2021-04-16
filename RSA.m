function c = RSA(m ,  e , n)
    %n = key(1)
    %e = key(2)
    disp(n)
    disp(e)
    c  = mod(power(m , e) , n)
    
end