function data_out = generate_Q(size,num)
I = eye(size);
count = 0;
data_out = zeros(size,size,num);
for ii = 1:size
    for jj = ii+1 : size
        temp = eye(size);
        temp(ii,jj) = 1;
        count = count + 1;
        data_out(:,:,count) = temp;
        if count == num 
            break;
        end
    end
    if count == num
        break;
    end 
end