%% 1- Key Generator
clear all; clc;
b = key_generator(100,200);
%private_key = [b(1)  b(3)];
%public_key = [b(1) b(2)];
n = b(1);
e = b(2);
d = b(3);


%% 2- Encoryption
% reading file and encorypting it and saving the encryption into a file
file1=fopen('msg.txt','rt'); 
f1=fscanf(file1,'%c');  %reading chars from the file
fclose(file1);
m=double(f1); %convert the text to ASCII to be able to process or deal with it.
for i=1:length(m)
ENC(i) = RSA_exponentiation(m(i) , e ,n); %the loop to encrypt the Ascii code
end

file2=fopen('Encrypted_msg.txt','wt');
fprintf(file2,'%d\n',ENC);
fclose(file2);

%% 3- Decryption 
% read the ecryption file then decrypt it then save the back massage into
% a file
file3=fopen('Encrypted_msg.txt','rt'); 
f3=fscanf(file3,'%d');
fclose(file3);
for i=1:length(m)
converted_msg(i) =RSA_exponentiation(f3(i) , d ,n); %decrypting the encrypted Ascii code
end

back_msg=char(converted_msg); %convert msg back from Ascii to char to view the message after decrypting it ( The desired message)
file4=fopen('back_msg.txt','wt'); %saving decrypted data to this file
fprintf(file4,'%c',back_msg);
fclose(file4);