UPDATE mova_serialno SET pre_fix='M',seed='1000000000' WHERE OBJECT_NAME='Order'
GO
UPDATE mova_serialno SET pre_fix='I',seed='10000' WHERE OBJECT_NAME='Item'
GO
UPDATE mova_serialno SET pre_fix='M',seed='100' WHERE OBJECT_NAME='Plugin' 
GO
insert into mova_roleFunction ( mova_roleid,mova_functionid) select 1,mova_functionid from mova_function
GO