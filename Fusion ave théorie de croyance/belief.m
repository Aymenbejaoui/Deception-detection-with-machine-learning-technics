function [Prob_null,Prob_low,Prob_high] = belief(alpha_1,alpha_2,score_1,score_2)

bet_1_yes=score_1*alpha_1+(1-alpha_1)/2;
bet_1_no=(1-score_1)*alpha_1+(1-alpha_1)/2;

bet_2_yes=score_2*alpha_2+(1-alpha_2)/2;
bet_2_no=(1-score_2)*alpha_2+(1-alpha_2)/2;


Prob_high=bet_1_yes*bet_2_yes;
Prob_low=bet_1_yes*bet_2_no+bet_1_no*bet_1_yes;
Prob_null=bet_1_no*bet_2_no;




end

