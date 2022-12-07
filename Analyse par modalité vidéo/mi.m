function [info_mut]=mi(A,B,varargin) 
%MI Determines the mutual information of two images or signals
%
%   I=mi(A,B)   Mutual information of A and B, using 256 bins for
%   histograms
%   I=mi(A,B,L) Mutual information of A and B, using L bins for histograms
%
%   Assumption: 0*log(0)=0
%
%   See also ENTROPY.

%   jfd, 15-11-2006
%        01-09-2009, added case of non-double images
%        24-08-2011, speed improvements by Andrew Hill

if nargin>=3
    L=varargin{1};
else
    L=40;
end

A=double(A); 
B=double(B); 
  %calculer la probabilité de A   
na = myhist(A(:),L); 
na = na/sum(na);
%calculer la probabilité de B
nb = myhist(B(:),L); 
nb = nb/sum(nb);
% calculer la probabilité de (A,B)
n2 = hist2(A,B,L); 
n2 = n2/sum(n2(:));
%calculer l'entropy de A et B . p(A)=sum(p(A)*log2(p(A))

% éliminer les valeurs zero en supposant que 0*log0=0
I1=find(na(:)>1e-12 );
I2=find(nb(:)>1e-12); 

entropyA=-sum(na(I1).*log2(na(I1)));
 entropyB=-sum(nb(I2).*log2(nb(I2)));
     % calculer l'information mutuelle normalisé=information
     % mutuelle/sqrt(p(A)*p(B))
     info_mut=sum(minf(n2,na'*nb));
%info_mutnor=info_mut/min(entropyA,entropyB); 



% -----------------------
% calculer p(A,B)* log( (p(A,B)/ p(A)*p(B)
function y=minf(pab,papb)

I=find(papb(:)>1e-12 & pab(:)>1e-12); % function support 
y=pab(I).*log2(pab(I)./papb(I));

