<%
class ClassTree
	private c_id
	private c_db_name
	private c_pid
	private c_classname
	private c_sortStr
	private c_conditionStr 
	private c_startID
	
	public property let id(str)
   		c_id = str
	end property
	
	public property let conditionStr(str)
   		c_conditionStr = str
	end property
	
	public property let startID(str)
   		c_startID = str
	end property
	
	public property let sortStr(str)
   		c_sortStr = str
	end property
	
	public property let db_name(str)
   		c_db_name = str
	end property
	
	public property let pid(str)
   		c_pid = str
	end property

	public property let classname(str)
   		c_classname = str
	end property

	dim list()
	dim i,n
	
	Private Sub Class_Initialize()'初始化变量
		i=0	
		n=0
	End Sub

	public function classarry(thisid,pid)'取得下级ID
		if pid>0 then
			sql="select * from "&c_db_name&" where "&c_pid&"="&thisid&c_conditionStr&" "  & c_sortStr
		else
			sql="select * from "&c_db_name&" where "&c_id&"="&thisid&c_conditionStr&" "  & c_sortStr
		end if
		'response.write sql & "<BR>"
		set rs_c=conn.execute(sql)
		n=n+1
		do while not rs_c.eof
			list(0,i)=rs_c(c_id)'装入数组中
			list(1,i)=rs_c(c_classname)
			list(2,i)=n
			list(3,i)=rs_c(c_pid)
			i=i+1
			thisid=classarry(rs_c(c_id),1)'这里递归调用,直到最后一个子类
			rs_c.movenext
		loop
		n=n-1
		rs_c.close
	end function

	public function arrylist()'循环出所有根类
		if c_startID=0 then 
			tSql ="select count("&c_id&") from "&c_db_name& " where 1=1 " & c_conditionStr	
		else
			tSql ="select count("&c_id&") from "&c_db_name& " where 1=1 and "&c_pid&"=" & c_startID  & c_conditionStr
		end if 
		response.write tSql
		set rs_c=conn.execute(tSql)
		lenght=rs_c(0)
		rs_c.close
		redim list(3,lenght)'设置数组
		set rs1=conn.execute("select "&c_id&" from "&c_db_name&" where "&c_pid&"=0" & c_startID & c_conditionStr&" " & c_sortStr)
		do while not rs1.eof
			call classarry(rs1(c_id),0)
			'n=1
			rs1.movenext
		loop
		rs1.close
		arrylist=list
	end function

end class
%>