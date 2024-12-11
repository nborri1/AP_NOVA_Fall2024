%% THIS FUNCTION COMPUTES PRICE OF LUCAS TREE
%  First version: November 2016
%  Last version: September 2016
%  Nicola Borri
%  LUISS University ROME
%  Report any bug and/or comment to nborri at luiss dot it
%% 

%% INPUTS
%  bet is time-discount factor
%  sig is (n x 1) vector of states (fruits)
%  up is (n x 1) vector containing marginal utility
%  P is (n x n) transtion matrix

%% OUTPUT
%  p is (n x 1) vector of prices given initial state

function p = p_fun_lucas78(bet,up,P,sig)
n = length(sig);
a = bet*(P*(sig.*up));
v = (eye(n) - bet*P)\a;
p = v./up;
end