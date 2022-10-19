%% Time Series Data Processing and Classification Experiment
% clc;
% clear;
% DATA = load('Supplemental [Data sets] S[1].data');
% Ex=mean(DATA,2);
% XY=repmat(Ex,1,60);
% En=mean(sqrt(pi/2).*abs(DATA-XY),2);
% He=sqrt(abs(var(DATA,0,2)-En.^2));%Reverse Cloud Generator
% ZO=[Ex En He];
% teach=[ZO(1:90,:);ZO(101:190,:);ZO(201:290,:);ZO(301:390,:);ZO(401:490,:);ZO(501:590,:)];
% text=[ZO(91:100,:);ZO(191:200,:);ZO(291:300,:);ZO(391:400,:);ZO(491:500,:);ZO(591:600,:)];
% j=1;
% for i=1:2:539
%     teachx(j,:)=teach(i,:);%Interlaced Extraction
%     j=j+1;
% end
% teachA=[teachx(1:15,:);teachx(46:60,:);teachx(91:105,:);teachx(136:150,:);teachx(181:195,:);teachx(226:240,:)];
% teachB=[teachx(16:30,:);teachx(61:75,:);teachx(106:120,:);teachx(151:165,:);teachx(196:210,:);teachx(241:255,:)];
% teachC=[teachx(31:45,:);teachx(76:90,:);teachx(121:135,:);teachx(166:180,:);teachx(211:225,:);teachx(256:270,:)];
% for i=1:60
%     for j=1:90
%         PX(i,j)=LSCM(text(i,:),teachA(j,:));%Similarity Measurement
%         a=i
%         b=j
%     end 
% end
% subs(PX(1:60,:));
% %PK=eval(PX(1:60,:));
%%Then sort the generated similarity matrix PK in Excel. And only the first 10 columns of data samples with the highest similarity are reserved.And the corresponding position matrix is extracted.Then the following code processing is carried out to calculate the classification accuracy.
%%
% clc;
% clear;
% p=0;
% e=0;
% t=[1,1,2,2,3,3,4,4,5,5];
% for k=1:1:10
%     for i=1:1:60
%         p=0;
%         for j=1:1:k
%             if unnamed(i,j)==0%unnamed is position matrix
%                 p=p+1;
%                 if p==t(1,k)
%                     p=0;
%                     e=e+1;
%                     break;
%                 end
%             end
%         end
%     end
%     L(1,k)=e;
%     e=0;
% end
% for i=1:1:10
%     accuracy(1,i)=((60-L(1,i))/60);
% end

















