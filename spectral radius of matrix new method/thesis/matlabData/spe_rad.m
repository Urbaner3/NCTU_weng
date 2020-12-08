load graph_aje_5.mat;
% call 'spe_rad(A)' in the command line of matlab
function rads = spe_rad(A)
load add_sub_mat5.mat;
len = size(Q_pos,3);
rads = zeros(2,len);
for ii = 1:len
    disp(ii);
    Ap = A * Q_pos(:,:,ii);
    [ww rr ] = eig(Ap);
    [rad nthei ] = max(abs(diag(rr)));
    rads(:,ii)=[rad nthei]';
end
rads
end