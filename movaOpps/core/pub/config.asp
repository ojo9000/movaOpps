<%
'Option Explicit
application("VERSION") = "v1.2.8"
 
Dim connStr
	Response.ContentType = "text/html"
	Response.Charset = "GB2312"

Dim configKey,configValue

'返回的debug信息	
	Dim returnDebug
	allowTrans = false			'默认不允许使用事务
	currDateFormat = "yy-mm-dd"
	lanStr="cn"
	curpage = 1	

class IniFile
	private mFileName
	private mDictionary
	
	private sub class_initialize()
		set mDictionary=Server.CreateObject("Scripting.Dictionary")
	end sub
	
	public property let FileName(vFileName)
	
	dim mFileSys 
	dim mIniFile
	dim mSection
	dim mKeyName
	dim mValue
	dim mString
	dim mStart
	mFileName=vFileName
	set mFileSys=server.CreateObject("Scripting.FileSystemObject")
	set mIniFile=mfilesys.OpenTextFile(mFileName,1)
	 do while not mIniFile.AtEndOfStream
		mString=trim(replace(mIniFile.ReadLine ,chr(9),"",1,-1))
		if mString<>"" then
			if left(mString,1)<>";" then
				if left(mString,1)="[" then
					mSection=trim(mid(mString,2,len(mstring)-2))
				else
					mStart=instr(mstring,"=")   
					mKeyName=left(mstring,mStart-1)
					mDictionary.Add lcase(mSection) & "_" & trim(lcase(mKeyName)),trim(mid(mString,mStart+1))
				end if
			end if
		end if
 loop
	mIniFile.Close
	Set mFileSys=nothing
	set mIniFile=nothing
	end property
	
	Public Function GetIniValue(byval vSection,byval vKeyName)
		'on error resume next
		GetIniValue=mDictionary(lcase(vSection) & "_" & lcase(vKeyName))
	End Function

End Class

sub reFlash()
		dim mINI 
		set mINI=new inifile
		mINI.FileName = Server.MapPath("/movaOpps/core/pub/config.ini")
	
	'DB
		application("DB_SERVER") 		= mINI.GetIniValue("DB","DB_SERVER")
		application("DB_UID") 			= mINI.GetIniValue("DB","DB_UID")
		application("DB_PWD") 			= mINI.GetIniValue("DB","DB_PWD")
		application("DB_DATABASE") 	= mINI.GetIniValue("DB","DB_DATABASE")
		application("DB_SCHEMA") 		= mINI.GetIniValue("DB","DB_SCHEMA")
	
	'PARAM
		application("UPLOAD_PATH") = mINI.GetIniValue("PARAM","UPLOAD_PATH")
		application("FAILD_LOGIN") = mINI.GetIniValue("PARAM","FAILD_LOGIN")
		application("NULL_ID") = mINI.GetIniValue("PARAM","NULL_ID")
		application("DEF_SPLIT_PAGE") = mINI.GetIniValue("PARAM","DEF_SPLIT_PAGE")
		application("SPLIT_LOG") = mINI.GetIniValue("PARAM","SPLIT_LOG")
		application("DEF_SPLIT_PAGE_STYLE") = mINI.GetIniValue("PARAM","DEF_SPLIT_PAGE_STYLE")
		application("STYLE") = mINI.GetIniValue("PARAM","STYLE")
		
		application("LOGO") = mINI.GetIniValue("PARAM","LOGO")
		application("FIRST_LOGO") = mINI.GetIniValue("PARAM","FIRST_LOGO")
		application("SESSION_TIMEOUT") = mINI.GetIniValue("PARAM","SESSION_TIMEOUT")
		application("SYSTEM_NAME") = mINI.GetIniValue("PARAM","SYSTEM_NAME")
		application("COMPANY") = mINI.GetIniValue("PARAM","COMPANY")
		application("PRINT_TEMPLATE") = mINI.GetIniValue("PARAM","PRINT_TEMPLATE")
		
		application("MAIL_SENDER_NAME") = mINI.GetIniValue("PARAM","PRINT_TEMPLATE")
		
		application("MAIL_SMTP") = mINI.GetIniValue("MAIL","MAIL_SMTP")
		application("MAIL_USER") = mINI.GetIniValue("MAIL","MAIL_USER")
		application("MAIL_USER_PASS") = mINI.GetIniValue("MAIL","MAIL_USER_PASS")
		application("MAIL_SENDER") = mINI.GetIniValue("MAIL","MAIL_SENDER")
		application("MAIL_SENDER_NAME") = mINI.GetIniValue("MAIL","MAIL_SENDER_NAME")
		
		
		
 

		
		
		'DEBUG	
		application("DEBUG_INFO") = false
		application("DEBUG_LINE_INFO") =false
		application("DEBUG_TEST") = false
		application("IGNORE_ERROR") = false
		
		if ucase(mINI.GetIniValue("DEBUG","DEBUG_INFO")) = "TRUE" then 
			application("DEBUG_INFO") = true
		end if
		
		if ucase(mINI.GetIniValue("DEBUG","DEBUG_LINE_INFO")) = "TRUE" then 
			application("DEBUG_LINE_INFO") = true
		end if
		
		if ucase(mINI.GetIniValue("DEBUG","DEBUG_TEST")) = "TRUE" then 
			application("DEBUG_TEST") = true
		end if
		
		if ucase(mINI.GetIniValue("DEBUG","IGNORE_ERROR")) = "TRUE" then 
			application("IGNORE_ERROR") = true
		end if 
 
 
End sub
 
if application("INIT")="" then 
	call reFlash
	
	application("INIT") = "ok"
end if


 
 Dim configArray(30) '配置数组
'提供config相应的辅助函数
function isConfigMark(fileLine)
	dim pFileLine 
	dim returnMark
	returnMark=false
	pFileLine = trim(fileLine)
	if len(pFileLine)>1  and left(pFileLine,1)<>";" and left(pFileLine,1)<>"[" then 
		isConfigMark = true		
	end if 
end function

sub getConfigItem(fLine)
	Dim configItem
	configItem=split(fLine,"=")
	configKey = trim(configItem(0))
	configValue = trim(configItem(1))
end sub

function getConfigIndex(confirmMark)
	Dim returnIndex
	if ucase(confirmMark) = "DB_SERVER" then 
		    returnIndex = 1
	end if 
	if ucase(confirmMark) = "DB_UID" then 
		    returnIndex = 2
	end if 
	if ucase(confirmMark) = "DB_PWD" then 
		    returnIndex = 3
	end if 
	if ucase(confirmMark) = "DB_DATABASE" then 
		    returnIndex = 4
	end if 
	if ucase(confirmMark) = "SYSTEM_NAME" then 
		    returnIndex = 5
	end if 
	if ucase(confirmMark) = "COMPANY" then 
		    returnIndex = 6
	end if 
	if ucase(confirmMark) = "UPLOAD_PATH" then 
		    returnIndex = 7
	end if 
	if ucase(confirmMark) = "FAILD_LOGIN" then 
		    returnIndex = 8
	end if 
	if ucase(confirmMark) = "SYSTEM_ROLE" then 
		    returnIndex = 9
	end if 
	if ucase(confirmMark) = "NULL_ID" then 
		    returnIndex = 10
	end if 
	if ucase(confirmMark) = "DEF_SPLIT_PAGE" then 
		    returnIndex = 11
	end if 
	if ucase(confirmMark) = "DEF_SPLIT_PAGE_STYLE" then 
		    returnIndex = 12
	end if 
	if ucase(confirmMark) = "SPLIT_LOG" then 
		    returnIndex = 13
	end if 
	if ucase(confirmMark) = "STYLE" then 
		    returnIndex = 14
	end if 
	if ucase(confirmMark) = "LOGO" then 
		    returnIndex = 15
	end if 
	if ucase(confirmMark) = "SESSION_TIMEOUT" then 
		    returnIndex = 16
	end if 
	if ucase(confirmMark) = "DEBUG_INFO" then 
		    returnIndex = 17
	end if 
	if ucase(confirmMark) = "DEBUG_LINE_INFO" then 
		    returnIndex = 18
	end if 
	if ucase(confirmMark) = "DEBUG_TEST" then 
		    returnIndex = 19
	end if
	if ucase(confirmMark) = "IGNORE_ERROR" then 
		    returnIndex = 20
	end if 
	if ucase(confirmMark) = "DB_SCHEMA" then 
		    returnIndex = 21
	end if 
	
	if ucase(confirmMark) = "FIRST_LOGO" then 
		    returnIndex = 22
	end if 
	
 
	
	if ucase(confirmMark) = "MAIL_SMTP" then 
		    returnIndex = 23
	end if 
	
	if ucase(confirmMark) = "MAIL_USER" then 
		    returnIndex = 24
	end if 
	
	if ucase(confirmMark) = "MAIL_USER_PASS" then 
		    returnIndex = 25
	end if 
	
	if ucase(confirmMark) = "MAIL_SENDER" then 
		    returnIndex = 26
	end if 
	
	if ucase(confirmMark) = "MAIL_SENDER_NAME" then 
		    returnIndex = 27
	end if 
	
	
	
	getConfigIndex = returnIndex
end function 

sub writeConfig
	Dim cacheFile
	Dim Fso
	Dim myFile
	Dim fLine 
	cacheFile =""
	Set Fso = Server.CreateObject("Scripting.FileSystemObject")
	Set myFile = Fso.OpenTextFile(Server.MapPath("/movaOpps/core/pub/config.ini"),1,True)
	While Not myFile.AtEndOfStream
		fLine = myFile.ReadLine
		fLine = trim(fLine)
		if isConfigMark(fLine)  then 
			getConfigItem fLine
			if configArray(getConfigIndex(configKey))<>"" then 
				cacheFile = cacheFile & configKey & " = " & configArray(getConfigIndex(configKey)) & vbcrlf
			else
				cacheFile = cacheFile & fLine & vbcrlf
			end if 
		else
			if InStr(fLine,";Last update")>0 then 
				cacheFile = ";Last update " & date &"_"& time & " by " & session("username") & vbcrlf
			else
				cacheFile = cacheFile & fLine & vbcrlf
			end if 
		end if 
	Wend
	myFile.Close
	Set myFile = Nothing
	Set Fso = Nothing
	
	'写入文件
	Dim writeFile	
	Dim writeFso
	Set writeFso = Server.CreateObject("Scripting.FileSystemObject")
	Set writeFile = writeFso.opentextfile(Server.MapPath("/movaOpps/core/pub/config.ini"),2,true)  
	writeFile.Write cacheFile '向文件写入数据，覆盖形式写入
	writeFile.close '推送内容写入并关闭写入通道
	Set writeFile = nothing
	Set writeFso = nothing
end sub

%>