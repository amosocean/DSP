while 1
num=input('please type a button:','s');
in=trans(num);
genere_out=osilate(in);
[Y,X]=frequency_analysis_goertzel(genere_out);
oup=button(Y,X);
fprintf('The typied button is:%c',oup)
end