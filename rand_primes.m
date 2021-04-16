function p = rand_primes(a,b)
mi = min(a , b);
ma = max(a , b);
counter=1;
f=0;
for n= mi: ma
    for i=2:sqrt(n)
        if rem(n,i)==0
            f=0;
            break;
        end
        f=1;
    end
    if f==1
        primes(counter)=n; % primes have all prime numbers between a , b
        counter=counter+1;
    end
end
rand_index = randperm(length(primes),2) 
p = primes(rand_index);

end

