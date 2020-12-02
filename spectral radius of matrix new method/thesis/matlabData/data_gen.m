
out6=cell(1,64);
for ii = 1:64
    swr=zeros(1,6);
    num = ii-1;
    for jj = 1:6
        if num < 2
            swr(jj) = num;
            break;
        else
            swr(jj) = rem(num,2);
            num = floor(num/2);
        end
    end
    coc = zeros(1,6);
    for kk = 1:length(swr)
        coc(7-kk)=swr(kk);
    end
    out6{ii} = coc;
end

for ii = 1:64
    out6{ii}
end

box = cell(64,3);
rads = zeros(2,64);
for kk = 1:64
    mode =  [ 0 0 0 0 ; 1 0 0 0 ; 1 1 0 0 ; 1 1 1 0 ];
    we = 0;
    for ii = 1:3
        for jj = ii+1:4
            we = we + 1;
            mode(ii,jj) = out6{kk}(we);
        end
    end
    
    [wr wu] = eig(mode);
    
    [rad nthei ] = max(abs(diag(wu)));
    rads(:,kk)=[rad nthei]';
    box{kk}{1} = mode;
    box{kk}{2} = wr;
    box{kk}{3} = wu;
    
end