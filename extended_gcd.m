function z = extended_gcd(x,y)
    if y == 0
        z = [x, 1 , 0 ];
    
    else
        m = extended_gcd(y , mod(x,y));
        d = m(1);
        a = m(2);
        b=  m(3);
        %a-fix(x/y)*b
        z = [d , b , a-fix(x/y)*b  ];
        
    end

end