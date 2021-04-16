function result=RSA_exponentiation(base,power , modul) %result either encrypted or decrypted msg

    %power = key(2)
    
    %modul = key(1)
    
    if power == 0
        result = 1;
        return;
    end

    if power == 1
        result = mod(base , modul);
        return;
    end
    
    t = RSA_exponentiation(base ,fix(power / 2) ,modul  );
    
    t = mod(t*t , modul)
    
    if rem(power , 2) == 0
        result = t;
        return;
    else
        result = mod((mod(base , modul)*t) ,modul);
        return;
    end


end