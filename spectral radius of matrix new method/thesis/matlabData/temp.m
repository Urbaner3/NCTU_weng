Q=zeros(5,5,20);count = 1;for ii =1:5    for jj = 1:5        Q(:,:,count)=eye(5);        if ii~=jj            Q(ii,jj,count)=1;            count = count + 1;        end    end end