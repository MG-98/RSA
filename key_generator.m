function z = key_generator(x,y)
    random_integers = rand_primes(x,y);
    p = random_integers(1);
    q = random_integers(2);
    
    k=(p-1)*(q-1);
    n=p*q;
    %find e
    for(i=floor(randi(k)/2):k)
    if (gcd(i,k)==1) e=i; break; end
    end
    %find d
    d=mp_inverse(e,k);
    
    z  = [n e d]
    % public key
    %z(1) = [n e]
    %private key
    %z(2) = [n d]
end