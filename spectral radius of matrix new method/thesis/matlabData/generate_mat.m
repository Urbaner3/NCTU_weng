%add zero to the matries
%eigen vec and value calculated, so wrong
%find some P(row permutation) and Q(column operation)

%10 for each classes
%C matrix
C_data3=zeros(3,3,30);
C_data4=zeros(4,4,30);
for i = 1:30
    tmp = randi(15,3);
    C_data3(:,:,i)=tmp;
    tmp = randi(15,4);
    C_data4(:,:,i)=tmp;
end

%C_big matrix
C_big3=C_data3;
C_big4=C_data4;
%decide how many indices to increase
%might repeat
for i = 1:30
    if i<11
        N_inc = randi(3); %N_inc : num of increasing indices
        P_inc = randperm(9,N_inc); %P_inc : place to increase
        A = C_data3(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big3(:,:,i)=A;
    end
    if i>10 && i<21
        N_inc = randi(3)+3; %N_inc : num of increasing indices
        P_inc = randperm(9,N_inc); %P_inc : place to increase
        A = C_data3(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big3(:,:,i)=A;
    end
    if i>20
        N_inc = randi(3)+6; %N_inc : num of increasing indices
        P_inc = randperm(9,N_inc); %P_inc : place to increase
        A = C_data3(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big3(:,:,i)=A;
    end
end

for i = 1:30
    if i<11
        N_inc = randi(4);
        P_inc = randperm(16,N_inc); %P_inc : place to increase
        A = C_data4(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big4(:,:,i)=A;
    end
    if i>10 && i<21
        N_inc = randi(4)+6;
        P_inc = randperm(16,N_inc); %P_inc : place to increase
        A = C_data4(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big4(:,:,i)=A;
    end
    if i>20
        N_inc = randi(4)+12;
        P_inc = randperm(16,N_inc); %P_inc : place to increase
        A = C_data4(:,:,i);
        for k = P_inc
            A(k)=A(k)+0.3;
        end
        C_big4(:,:,i)=A;
    end
end
    
    
%display
C_big3
C_data3
C_big4
C_data4
    
