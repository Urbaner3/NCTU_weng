
fid = fopen('rp_exnt.txt','w');
for A_num = 1:64
    A = box{A_num}{1};
    
    
    
    pat6 = out6{A_num};
    gp = {};
        gp{1}=pat6(1:3);
        gp{2} = pat6(4:5);
        gp{3} = pat6(6);
        for row = 1:3
            pat_gp = gp{row};
            count = 0;
            sp = [];
            %search for zeros
            for jj = 1:length(pat_gp)
                
                if pat_gp(jj) == 0
                    sp = [sp jj]; %space of zeros
                    count = count + 1;  %count on the digits
                end
            end
            B = A;
            shift_digit = [ 0 3 5];
            for numb = 1:2^count -1
                tmp = dec2bin(numb,count);
                %tmp can be shorter than pat* so adjust it
                
                new_pat = pat_gp;
                %new_pat(sp) = tmp_i
                    new_pat(sp) = tmp-'0';   %to make it an array
                B(row, (1:length(pat_gp))+row) = new_pat;
                % get the case number of matrix B
                tmp = pat6;
                %only the row group is taken
                    tmp((1:4-row) + shift_digit(row) ) = new_pat;
                % tmp is array, changing it to binary and then decimal +1
                case_num = bin2dec(num2str(tmp(1:end))) +1;
                eig_A = max(abs(eig(A)));
                eig_B = max(abs(eig(B)));
                if eig_B >= eig_A
                    fprintf(fid,'%d major %d\n',case_num,A_num);
                else
                    fprintf(fid,'%d << %d\n',case_num,A_num);
                end
            end
        end
        
        
end
fclose(fid);
                
                
                
            
            
                
                
    
                