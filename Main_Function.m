%Asks for the number of measurements made.
k = readmatrix("input.xlsx","Range",'A1:A1');
%Asks for the vectors in reference frame.
%Value of t required to select AOR in SQR.
t = readmatrix("input.xlsx","Range",'A2:A2');
%Asks for weigts if any.
w = readmatrix("input.xlsx","Range",strcat('B1:B',string(k)));
%Asks for the vectors in Reference Frame.
r = readmatrix("input.xlsx","Range",strcat('C1:E',string(k)));
%Asks for the vectors in Body Frame.
b = readmatrix("input.xlsx","Range",strcat('F1:H5',string(k)));
%Asks for error parameter for sqr comparison.
error = readmatrix("input.xlsx","Range",'A3:A3');
    
%Check for Singularity Case (180 degree rotation case).
a = checkmatrix(r,b,w,k);
if (checkmatrix(r,b,w,k)<error)
    disp("Sqr Invoked");
    finalq = sqrot(r,b,w,k,t);
else
    finalq = q(r,b,w,k);
end
    
%SQR 't' updation.
writematrix(sqrupdate(finalq),"input.xlsx",'Range','I1:I1');
    
%Purpose of our program.
writematrix(finalq,"output.xlsx",'Range','B1:B4');
writematrix(finalq,"input.xlsx",'Range','I1:I4');
disp(finalq);