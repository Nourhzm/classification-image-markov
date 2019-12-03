function [cl1, cl2] = identif_class(X)
[counts, bins] = imhist(X)
cl1=0
cl2=255
%%for i= 1:size(counts)
%     if counts[i]~=0 && cl1~=0
%         cl1=i
%         disp(i)
%     end
%     if counts[i]~=0
%         disp(i)
%       cl2=i
%     end
% end
end