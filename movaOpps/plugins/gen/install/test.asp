<%
 
A_Key=split("96,44,63,80",",") '定义密钥 
'*********加密的过程********* 
Function EnCrypt(m) 
Dim strChar,iKeyChar,iStringChar,I 
k=0 
for I = 1 to Len(m) 
iKeyChar =Cint(A_Key(k)) 
iStringChar = Asc(mid(m,I,1)) '获取字符的ASCII码值 
iCryptChar = iKeyChar Xor iStringChar '进行异或运算 
'对密钥进行移位运算 
If k<3 Then 
k=k+1 
Else 
k=0 
End If 
c = c & Chr(iCryptChar) 
next 
EnCrypt = c 
End Function 
'*********解密的过程********* 
Function DeCrypt(c) 
Dim strChar, iKeyChar, iStringChar, I 
k=0 
for I = 1 to Len(c) 
iKeyChar =Cint(A_Key(k)) 
iStringChar = Asc(mid(c,I,1)) 
iDeCryptChar = iKeyChar Xor iStringChar '进行异或运算 
'对密钥进行移位运算 
If k<3 Then 
k=k+1 
Else 
k=0 
End If 
strDecrypted = strDecrypted & Chr(iDeCryptChar) 
next 
DeCrypt = strDecrypted 
End Function 

response.write  DeCrypt(EnCrypt("e汉b子a")) & "<HR>"

%>