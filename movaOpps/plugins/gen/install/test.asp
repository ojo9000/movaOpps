<%
 
A_Key=split("96,44,63,80",",") '������Կ 
'*********���ܵĹ���********* 
Function EnCrypt(m) 
Dim strChar,iKeyChar,iStringChar,I 
k=0 
for I = 1 to Len(m) 
iKeyChar =Cint(A_Key(k)) 
iStringChar = Asc(mid(m,I,1)) '��ȡ�ַ���ASCII��ֵ 
iCryptChar = iKeyChar Xor iStringChar '����������� 
'����Կ������λ���� 
If k<3 Then 
k=k+1 
Else 
k=0 
End If 
c = c & Chr(iCryptChar) 
next 
EnCrypt = c 
End Function 
'*********���ܵĹ���********* 
Function DeCrypt(c) 
Dim strChar, iKeyChar, iStringChar, I 
k=0 
for I = 1 to Len(c) 
iKeyChar =Cint(A_Key(k)) 
iStringChar = Asc(mid(c,I,1)) 
iDeCryptChar = iKeyChar Xor iStringChar '����������� 
'����Կ������λ���� 
If k<3 Then 
k=k+1 
Else 
k=0 
End If 
strDecrypted = strDecrypted & Chr(iDeCryptChar) 
next 
DeCrypt = strDecrypted 
End Function 

response.write  DeCrypt(EnCrypt("e��b��a")) & "<HR>"

%>