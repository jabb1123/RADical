

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
<!--#Popup newsletter" -->
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
var expDays = 30; // number of days the cookie should last
var page = "US_popup.html";
var windowprops = "width=770,height=600,location=no,toolbar=no,menubar=no,scrollbars=no,resizable=no";
function GetCookie (name) {  
var arg = name + "=";  
var alen = arg.length;  
var clen = document.cookie.length;  
var i = 0;  
while (i < clen) {    
var j = i + alen;    
if (document.cookie.substring(i, j) == arg)      
return getCookieVal (j);    
i = document.cookie.indexOf(" ", i) + 1;    
if (i == 0) break;   
}  
return null;
}
function SetCookie (name, value) {  
var argv = SetCookie.arguments;  
var argc = SetCookie.arguments.length;  
var expires = (argc > 2) ? argv[2] : null;  
var path = (argc > 3) ? argv[3] : null;  
var domain = (argc > 4) ? argv[4] : null;  
var secure = (argc > 5) ? argv[5] : false;  
document.cookie = name + "=" + escape (value) + 
((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + 
((path == null) ? "" : ("; path=" + path)) +  
((domain == null) ? "" : ("; domain=" + domain)) +    
((secure == true) ? "; secure" : "");
}
function DeleteCookie (name) {  
var exp = new Date();  
exp.setTime (exp.getTime() - 1);  
var cval = GetCookie (name);  
document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString();
}
var exp = new Date(); 
exp.setTime(exp.getTime() + (expDays*24*60*60*1000));
function amt(){
var count = GetCookie('count')
if(count == null) {
SetCookie('count','1')
return 1
}
else {
var newcount = parseInt(count) + 1;
DeleteCookie('count')
SetCookie('count',newcount,exp)
return count
   }
}
function getCookieVal(offset) {
var endstr = document.cookie.indexOf (";", offset);
if (endstr == -1)
endstr = document.cookie.length;
return unescape(document.cookie.substring(offset, endstr));
}
function checkCount() {
var count = GetCookie('count');
if (count == null) {
count=1;
SetCookie('count', count, exp);
window.open(page, "", windowprops);
}
else {
count++;
SetCookie('count', count, exp);
   }
}
//  End -->
</script>

<!--#End Popup newsletter" -->


		<title>UNCTADstat
		</title>
		<meta NAME="GENERATOR" CONTENT="Beyond 20/20 Inc.">
		<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name=vs_defaultClientScript content="JavaScript">
		<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
		<script type="text/javascript" src="reportFolders.js"></script>
		<script type="text/javascript" src="reportExplorer.js"></script>
		<script type="text/javascript" src="/wds/wdsAPI.js"></script>
		<script type="text/javascript" src="/wds/Common/UI/actionMenu.js"></script>
<script type="text/javascript" src="/wds/Common/Util/util.js"></script>
<script type="text/javascript" src="/wds/Common/Util/resize.js"></script>
<script type="text/javascript" src="/wds/Common/Util/cover.js"></script>
<script type="text/javascript" src="/wds/res/en/WDS.resources.js"></script>
<script type="text/javascript">var G_strLanguage = "en";</script>
<link rel='stylesheet' type='text/css' href='/wds/Common/Styles/Style_NS.css' />

		<script type="text/javascript">
			var SEARCH_BLANK_CHARS = " \"\\`~!@#$%^&*()-_=+|[{]};:\',<.>\/?";
		</script>
	</head>
	<body leftmargin='0' topmargin='0' rightmargin='0' class='RFTableBody' onLoad='javascript:onPageLoad();checkCount()'
		onResize='javascript:onLayoutResize(false);' onClick='javascript:onObjectClick();'>
		<span id='cover' style='position:absolute;left:0;top:0;width:0;height:0;visibility:hidden;cursor:wait'></span>
		
<script type="text/javascript">
var gastrUrl = new Array (""
,"/wds/TableViewer/tableView.aspx"
,"/wds/obsolete"
,"/wds/TableViewer/chartView.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/dimView.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/ExtractViewer/extractView.aspx"
,"/wds/ThematicMaps/mapView.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
,"/wds/TableViewer/document.aspx"
);
</script>

		<div id="cell1">
<!--Top logo --><TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0><TR>
<!--Top logo ENGLISH-->		
				<TD><a href="http://unctadstat.unctad.org/wds/ReportFolders/reportFolders.aspx?sCS_ChosenLang=en"><IMG SRC="/wds/Common/Images/UnctadStatBannerLeftEn.jpg" WIDTH=650 HEIGHT=102 ALT="UNCTADstat Home page" BORDER="0"></a></TD>
                <TD width=100% background="/wds/Common/Images/UnctadStatBannerRepeat.jpg" colspan="2"></TD>				
				<TD><a href="http://unctad.org" target="blank"><IMG SRC="/wds/Common/Images/UnctadStatBannerRightEn.jpg" WIDTH=100 HEIGHT=102  ALT="UNCTAD official website" BORDER="0"></a></TD>

		</TR>		
</TABLE>
<div id="menu">
    <div id="menu-left">
        <ul id="MenuGlobal" class="MenuBarHorizontal">

            <li class="Home"><a class="MenuBarItem" href="http://unctadstat.unctad.org/EN/Index.html">HOME</a></li>
            <li><a class="MenuBarItemActive" href="http://unctadstat.unctad.org/wds/ReportFolders/reportFolders.aspx?sCS_ChosenLang=en">
                DATA CENTER</a></li>
            <!-- <li><a href="CountryProfile.html">COUNTRY PROFILE</a></li>-->
            <li><a href="http://unctadstat.unctad.org/EN/Documentation.html">
                DOCUMENTATION</a>
                <ul>
                    <li><a href="http://unctadstat.unctad.org/EN/Classifications.html">CLASSIFICATIONS</a></li>
                    <li><a href="http://unctadstat.unctad.org/EN/Abbreviations.html">ABBREVIATIONS</a></li>
                    <li><a href="http://unctadstat.unctad.org/EN/FAQ.html">F.A.Q.</a></li>
                </ul>
            </li>

        </ul>
    </div>
    <div id="menu-right">

<a href="javascript:OnRequestedLang(&quot;fra&quot;);"><img alt="Switch language" title="Switch language" src="/wds/Common/Images/Flags_EN.png" ></a>

    </div>
    <script type="text/javascript" language="javascript">var MenuGlobal = new Spry.Widget.MenuBar("MenuGlobal", { imgDown: "../Common/SpryAssets/SpryMenuBarDownHover.gif", imgRight: "../Common/SpryAssets/SpryMenuBarRightHover.gif" });</script>
</div></div>
		<form id="WdsForm" method="post" action="reportFolders.aspx" onsubmit='return(onSubmit == null ? true : onSubmit());'>
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<TD valign="top" align="left" id='cell2'>
						
<!-- Menu -->
					</TD>
					<td valign="top" id='cell4'>
<table border='0' cellpadding='0' cellspacing='0' width='100%'><tr height='11px'><td width='100%'></td><td rowspan='2' class='CommonToolbarClass'>
<table width='100%' border='0' cellpadding='0' cellspacing='0'>
	<tr>	   
		<td>

		<!--Accessibility link-->
		<a href="#maincontent" ><img src="/wds/Common/Images/transp1px.gif" alt='Skip to main content' border='0'/></a></td>
		<td valign='top' width='100%'>
		<table width='100%' cellspacing='0' cellpadding='1px' id='toolbar'>
			 <tr>
				<td width='100%' nowrap='nowrap'></td>
				<TD align='left' border='0' width='25px'><A href='javascript:OnLogin();' onFocus="document.Login.src='/wds/Common/Images/login_over.gif'" onMouseover="document.Login.src='/wds/Common/Images/login_over.gif'" onBlur="document.Login.src='/wds/Common/Images/login_active.gif'" onMouseout="document.Login.src='/wds/Common/Images/login_active.gif'"><IMG SRC='/wds/Common/Images/login_active.gif' alt="Sign in" title="Sign in" name='Login' border='0' cellspacing='0' cellpadding='0'></A></TD>
<TD align='left' border='0' width='25px'><A href='javascript:OnReports();' onFocus="document.reportfolders.src='/wds/Common/Images/report_folders_over.gif'" onMouseover="document.reportfolders.src='/wds/Common/Images/report_folders_over.gif'" onBlur="document.reportfolders.src='/wds/Common/Images/report_folders_active.gif'" onMouseout="document.reportfolders.src='/wds/Common/Images/report_folders_active.gif'"><IMG SRC='/wds/Common/Images/report_folders_active.gif' alt="Reports" title="Reports" name='reportfolders' border='0' cellspacing='0' cellpadding='0'></A></TD>
<TD align='left' border='0'><IMG SRC='/wds/Common/Images/separator.gif' alt='' title=''/></TD>
<TD align='left' border='0' width='25px'><A href='javascript:OnHelpWindow(false);' onFocus="document.help.src='/wds/Common/Images/help_over.gif'" onMouseover="document.help.src='/wds/Common/Images/help_over.gif'" onBlur="document.help.src='/wds/Common/Images/help_active.gif'" onMouseout="document.help.src='/wds/Common/Images/help_active.gif'"><IMG SRC='/wds/Common/Images/help_active.gif' alt="Help (opens new window)" title="Help (opens new window)" name='help' border='0' cellspacing='0' cellpadding='0'></A></TD>

			
</tr>
		</table>




<!--RSS FRENCH-->	

<td>
<a target="_blank" style="border: 0px solid #FFFFFF" title="RSS" href="/rss/rsseng.xml"><IMG alt="RSS" border="0px" SRC="/wds/common/Images/news.gif"></a>
</td>



		<!--Accessibility anchor-->

		<td><a name="maincontent"><img src="/wds/Common/Images/transp1px.gif" border='0'alt=""/></a></td> 



	</tr>
</table>

</td><TD rowspan='2' width='1%'><A title='http://www.beyond2020.com' href='http://www.beyond2020.com' target='new'><IMG SRC='/wds/Common/Images/wds.gif' alt="Beyond 20/20 home page" border='0'></A></TD></tr>
<tr height="21px">


<td><table border='0' cellpadding='0' cellspacing='0' width='100%'><tr>
<td class='TabNoBkg'><img src='/wds/Common/Images/tab_left_on.png' alt=''/></td>
<td class='TabNoBkg' background='/wds/Common/Images/tab_bg_on.png'><NOBR>Reports</NOBR></td>
<td class='TabNoBkg'><img src='/wds/Common/Images/tab_right_on.png' alt=''/></td><td width='100%' style="BORDER-BOTTOM: solid 1px #000000;">&nbsp;</td></tr>
</table>
</td>

</tr>
</table>

						
						<table width="100%" cellpadding='0' cellspacing='0' border='0'>
							<tr>
								<td>
									
<div id='ActDiv'>
	<table width='1%' border='0' cellspacing='0' cellpadding='1px'>
      <tr>
		<TD align='left' width='1px'><Div class='BtnPos'><Button type='button' accesskey='A' id='ActBtn' class='menuItemBtn' onClick='javascript:initMenu();'title="You must sign in first">Actions&nbsp;&nbsp;&nbsp;<img id='ActBtnImg' src='/wds/Common/Images/tridown.gif' align='middle' alt=''></Button></Div></TD><script type='text/javascript'>var main_menu=new Array("Activate profiles...","","javascript:OnActivateProfile();","0","1","","Deactivate all profiles","","javascript:OnDeactivateProfile();","0","1","","Delete profiles...","","javascript:OnDeleteProfile();","0","1","");
</script>

		<!--Draw NavMaps button (if needed) -->
		
		<!--Draw Search Box -->
		
			<td width='1%'><nobr>&nbsp;
				
					<label for='RF_SearchString' style='width:1px;height:1px;font-size:0;overflow:hidden;VISIBILITY:hidden;'>Search text</label> 
					<input accesskey='S' class='GeneralText' id='RF_SearchString' title="Search text" name='RF_SearchString' type='text' VALUE="" size='40'/>
					<input class='menuItemBtn3' TYPE='SUBMIT' VALUE="Search"/>
				
			</nobr></td>
			<td width='100%'>&nbsp;</td>
		
		</tr>
	</table>
</div>

								</td>
							</tr>
						</table>
						<TABLE width='100%' id='ExplorerTable' style='border-left:2px solid black;border-right:1px solid black;border-bottom:2px solid black;border-top:2px solid black;' cellspacing='0'><TR id='ExplorerHeader' class='ExplorerHeaderColor'><TD id='FolderPane1' align='left' class='RFGeneralText' style='border-right:0px solid black; border-left:0px solid black;border-top:0px solid black; border-bottom:1px solid black;' nowrap>&nbsp;Folders</TD><TD id='FolderPane2' align='right' class='DataBodyTables' style='border-right:1px solid black; border-left:none;border-top:0px solid black; border-bottom:1px solid black;' nowrap><a href='Javascript:ShowFolders(0);'><IMG SRC='Images/closefolders.gif' ALIGN='absmiddle' BORDER='0' alt="Close" title="Close"></a></TD><TD ROWSPAN='2' border='1px' width='1' onMouseDown='onMouseDown(event);'style='cursor:move'></TD><TD id='NameInReportsHeader' class='RFGeneralText' style='border-right:1px solid black;border-left:1px solid black;border-top:0px solid black; border-bottom:1px solid black;'><nobr>&nbsp;Name&nbsp;<a title="Sort ascending" href="javascript:SetSort('Name', true);"><IMG BORDER='0' SRC='../Common/Images/sorttoparrow.gif' ALIGN='absmiddle' alt="Sort ascending"></a><a title="Sort descending" href="javascript:SetSort('Name', false);"><IMG BORDER='0' SRC='../Common/Images/sortbottomarrow.gif' ALIGN='absmiddle' alt="Sort descending"></a></nobr></TD><TD id='DateInReportsHeader' class='RFGeneralText RFDateHeader' style='border-right:1px solid black;border-left:1px solid black;border-top:0px solid black; border-bottom:1px solid black;'><NOBR>&nbsp;Date&nbsp;(yyyy-mm-dd)&nbsp;<a title="Sort ascending" href="javascript:SetSort('Date', true);"><IMG BORDER='0' SRC='../Common/Images/sorttoparrow.gif' ALIGN='absmiddle' alt="Sort ascending"></a><a title="Sort descending" href="javascript:SetSort('Date', false);"><IMG BORDER='0' SRC='../Common/Images/sortbottomarrow.gif' ALIGN='absmiddle' alt="Sort descending"></a></NOBR></TD></TR><TR valign='top'><TD colspan='2' nowrap style='border-right:1px solid black;border-left:0px solid black;border-top:1px solid black; border-bottom:0px solid black;'><DIV id='SpanTable' class='ExplorerFolderPane'><Table  class='DataBodyTables' border=0 cellspacing=0><TR><TD nowrap></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,15912');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><a href="javascript:OnFolderClick('Expand','True','P,15912');"><IMG SRC="Images/openfolder.gif" ALIGN='top' BORDER='0' alt="Folder: International trade in goods and services" title="Folder: International trade in goods and services" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a class="ActiveFolder"  alt="Folder: International trade in goods and services" title="Folder: International trade in goods and services" href="javascript:OnFolderClick('Expand','True','P,15912');">International trade in goods and services</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,4');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,4');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Economic trends" title="Folder: Economic trends" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Economic trends" title="Folder: Economic trends" href="javascript:OnFolderClick('Expand','True','P,4');">Economic trends</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,5');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,5');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Foreign direct investment" title="Folder: Foreign direct investment" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Foreign direct investment" title="Folder: Foreign direct investment" href="javascript:OnFolderClick('Expand','True','P,5');">Foreign direct investment</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,6');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,6');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: External financial resources" title="Folder: External financial resources" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: External financial resources" title="Folder: External financial resources" href="javascript:OnFolderClick('Expand','True','P,6');">External financial resources</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,7');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,7');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Population and labour force" title="Folder: Population and labour force" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Population and labour force" title="Folder: Population and labour force" href="javascript:OnFolderClick('Expand','True','P,7');">Population and labour force</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,8');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,8');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Commodities" title="Folder: Commodities" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Commodities" title="Folder: Commodities" href="javascript:OnFolderClick('Expand','True','P,8');">Commodities</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,9');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,9');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Information economy" title="Folder: Information economy" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Information economy" title="Folder: Information economy" href="javascript:OnFolderClick('Expand','True','P,9');">Information economy</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,10');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,10');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Creative economy" title="Folder: Creative economy" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Creative economy" title="Folder: Creative economy" href="javascript:OnFolderClick('Expand','True','P,10');">Creative economy</a></TD></TR><TR><TD nowrap><a href="Javascript:ExpandFolder('Expand','True','P,11');"><IMG SRC='Images/expanded.gif' ALIGN='absmiddle' BORDER='0' ALT="Expand" TITLE="Expand"></a><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','True','P,11');"><IMG SRC="Images/folder.gif" ALIGN='top' BORDER='0' alt="Folder: Maritime transport" title="Folder: Maritime transport" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a  alt="Folder: Maritime transport" title="Folder: Maritime transport" href="javascript:OnFolderClick('Expand','True','P,11');">Maritime transport</a></TD></TR></Table></DIV></TD><TD colspan='3' align='left' valign='top' nowrap style='border-right:1px solid black;border-left:1px solid black;border-top:1px solid black; border-bottom:0px solid black;'><DIV id='SpanTableContents' class='ExplorerContentPane'><Table border=0 cellspacing=0 width='100%'><tr><td class='DataBodyTables'><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','False','P,15912,15913');"><IMG SRC='Images/folder.gif' BORDER='0' align='absmiddle' alt="Folder: Trade trends" title="Folder: Trade trends" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a alt="Folder: Trade trends" title="Folder: Trade trends" href="javascript:OnFolderClick('Expand','False','P,15912,15913');">Trade trends</a></td><td class='DataBodyTables RFDate'><nobr>&nbsp;2012-02-14, 16:19:12</nobr></td></tr><tr><td class='DataBodyTables'><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','False','P,15912,15914');"><IMG SRC='Images/folder.gif' BORDER='0' align='absmiddle' alt="Folder: Trade structure by partner, product or service-category" title="Folder: Trade structure by partner, product or service-category" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a alt="Folder: Trade structure by partner, product or service-category" title="Folder: Trade structure by partner, product or service-category" href="javascript:OnFolderClick('Expand','False','P,15912,15914');">Trade structure by partner, product or service-category</a></td><td class='DataBodyTables RFDate'><nobr>&nbsp;2012-02-14, 16:19:26</nobr></td></tr><tr><td class='DataBodyTables'><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','False','P,15912,15915');"><IMG SRC='Images/folder.gif' BORDER='0' align='absmiddle' alt="Folder: Trade indicators" title="Folder: Trade indicators" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a alt="Folder: Trade indicators" title="Folder: Trade indicators" href="javascript:OnFolderClick('Expand','False','P,15912,15915');">Trade indicators</a></td><td class='DataBodyTables RFDate'><nobr>&nbsp;2012-02-14, 16:19:38</nobr></td></tr><tr><td class='DataBodyTables'><IMG SRC='Images/1.gif' WIDTH='3' HEIGHT='18' align='absmiddle' ALT=''><a href="javascript:OnFolderClick('Expand','False','P,15912,15916');"><IMG SRC='Images/folder.gif' BORDER='0' align='absmiddle' alt="Folder: Market access" title="Folder: Market access" ><IMG SRC='Images/1.gif' WIDTH='1' HEIGHT='18' align='top' BORDER='0' ALT=''></a><a alt="Folder: Market access" title="Folder: Market access" href="javascript:OnFolderClick('Expand','False','P,15912,15916');">Market access</a></td><td class='DataBodyTables RFDate'><nobr>&nbsp;2012-02-14, 16:37:09</nobr></td></tr>
<script type="text/javascript">
var gastrName = ["Trade trends","Trade structure by partner, product or service-category","Trade indicators","Market access"];
var ganId = [15913,15914,15915,15916];
var ganSourceId = [-1,-1,-1,-1];
var ganType = [0,0,0,0];
var ganShared = [0,0,0,0];
</script></Table></DIV></TD></TR></TABLE>	<input type="hidden" name="sCS_referer" id="sCS_referer" value="" />
	<input type="hidden" name="sCS_ChosenLang" id="sCS_ChosenLang" value="en" />
	<input type="hidden" name="sCS_AppPath" id="sCS_AppPath" value="/wds" />
	<input type="hidden" name="sCS_SpawnWindow" id="sCS_SpawnWindow" value="True" />
	<input type="hidden" name="CS_InHelp" id="CS_InHelp" value="False" />
	<input type="hidden" name="CS_SaveMode" id="CS_SaveMode" value="True" />
	<input type="hidden" name="CS_langSwitch" id="CS_langSwitch" value="" />
	<input type="hidden" name="CS_TargetPage" id="CS_TargetPage" value="" />
	<input type="hidden" name="CS_demoIndex" id="CS_demoIndex" value="0" />
	<input type="hidden" name="CS_HelpPage" id="CS_HelpPage" value="" />
	<input type="hidden" name="CS_FramesInHelp" id="CS_FramesInHelp" value="True" />
	<input type="hidden" name="CS_Printable" id="CS_Printable" value="False" />
	<input type="hidden" name="CS_TableauHeight" id="CS_TableauHeight" value="0" />
	<input type="hidden" name="CS_TableauWidth" id="CS_TableauWidth" value="0" />
	<input type="hidden" name="CS_ActiveXEnabled" id="CS_ActiveXEnabled" value="True" />
	<input type="hidden" name="CS_ReportTitle" id="CS_ReportTitle" value="" />
	<input type="hidden" name="CS_NextPage" id="CS_NextPage" value="" />
	<input type="hidden" name="sCS_DownloadLimit" id="sCS_DownloadLimit" value="500000" />
	<input type="hidden" name="CS_IVTReportIsOpened" id="CS_IVTReportIsOpened" value="False" />
	<input type="hidden" name="CS_bIVTReportHasMapTab" id="CS_bIVTReportHasMapTab" value="False" />
	<input type="hidden" name="LG_targetpage" id="LG_targetpage" value="" />
	<input type="hidden" name="LG_reprompt" id="LG_reprompt" value="" />
	<input type="hidden" name="PR_ActiveProfileList" id="PR_ActiveProfileList" value="" />
	<input type="hidden" name="PR_NextPage" id="PR_NextPage" value="" />
	<input type="hidden" name="PR_TableLang" id="PR_TableLang" value="default" />
	<input type="hidden" name="PR_TableDefaultLang" id="PR_TableDefaultLang" value="default" />
	<input type="hidden" name="PR_Mode" id="PR_Mode" value="0" />
	<input type="hidden" name="IF_Mode" id="IF_Mode" value="0" />
	<input type="hidden" name="IF_NextPage" id="IF_NextPage" value="" />
	<input type="hidden" name="IF_ReportName" id="IF_ReportName" value="" />
	<input type="hidden" name="IF_ReportType" id="IF_ReportType" value="0" />
	<input type="hidden" name="IF_ReportID" id="IF_ReportID" value="" />
	<input type="hidden" name="IF_PageBeforeSummary" id="IF_PageBeforeSummary" value="" />
	<input type="hidden" name="sRF_SortField" id="sRF_SortField" value="" />
	<input type="hidden" name="sRF_SortAscending" id="sRF_SortAscending" value="False" />
	<input type="hidden" name="sRF_ActivePath" id="sRF_ActivePath" value="P,15912" />
	<input type="hidden" name="sRF_Mode" id="sRF_Mode" value="0" />
	<input type="hidden" name="RF_NextPage" id="RF_NextPage" value="" />
	<input type="hidden" name="RF_ReportID" id="RF_ReportID" value="" />
	<input type="hidden" name="sRF_User" id="sRF_User" value="" />
	<input type="hidden" name="RF_ReportType" id="RF_ReportType" value="0" />
	<input type="hidden" name="RF_Action" id="RF_Action" value="" />
	<input type="hidden" name="RF_ActionFolderPath" id="RF_ActionFolderPath" value="" />
	<input type="hidden" name="RF_ActionInContentsPane" id="RF_ActionInContentsPane" value="" />
	<input type="hidden" name="RF_DelFolder" id="RF_DelFolder" value="" />
	<input type="hidden" name="sRF_Expanded" id="sRF_Expanded" value="" />
	<input type="hidden" name="RF_NewFolder" id="RF_NewFolder" value="" />
	<input type="hidden" name="sRF_Task" id="sRF_Task" value="0" />
	<input type="hidden" name="RF_Rename" id="RF_Rename" value="" />
	<input type="hidden" name="sRF_PosX" id="sRF_PosX" value="0" />
	<input type="hidden" name="sRF_PosY" id="sRF_PosY" value="0" />
	<input type="hidden" name="sRF_ViewTop" id="sRF_ViewTop" value="0" />
	<input type="hidden" name="sRF_ShowFolders" id="sRF_ShowFolders" value="1" />
	<input type="hidden" name="sRF_PanePosition" id="sRF_PanePosition" value="-1" />
	<input type="hidden" name="RF_CopyPathSource" id="RF_CopyPathSource" value="" />
	<input type="hidden" name="RF_SelectedId" id="RF_SelectedId" value="" />
	<input type="hidden" name="RF_CopyId" id="RF_CopyId" value="" />
	<input type="hidden" name="RF_CopyName" id="RF_CopyName" value="" />
	<input type="hidden" name="RF_CopyType" id="RF_CopyType" value="" />
	<input type="hidden" name="sRF_SearchStringBuf" id="sRF_SearchStringBuf" value="" />
	<input type="hidden" name="sRF_SearchRangeBuf" id="sRF_SearchRangeBuf" value="" />
	<input type="hidden" name="sRF_SearchTypeBuf" id="sRF_SearchTypeBuf" value="" />
	<input type="hidden" name="sRF_SearchExactWordBuf" id="sRF_SearchExactWordBuf" value="True" />
	<input type="hidden" name="sRF_SearchProperties" id="sRF_SearchProperties" value="" />
	<input type="hidden" name="IF_ActiveFolder" id="IF_ActiveFolder" value="15912" />
	<input type="hidden" name="IF_SearchString" id="IF_SearchString" value="" />
	<input type="hidden" name="sRF_ScopedSearching" id="sRF_ScopedSearching" value="False" />
	<input type="hidden" name="sRF_InManageReportsMode" id="sRF_InManageReportsMode" value="False" />
	<input type="hidden" name="IF_SearchType" id="IF_SearchType" value="" />
	<input type="hidden" name="IF_SearchExactWord" id="IF_SearchExactWord" value="True" />
	<input type="hidden" name="IF_SearchProperties" id="IF_SearchProperties" value="" />
	<input type="hidden" name="sRF_SearchFromMap" id="sRF_SearchFromMap" value="False" />
	<input type="hidden" name="sRF_SearchPerform" id="sRF_SearchPerform" value="False" />
	<input type="hidden" name="sRF_SearchReportIDs" id="sRF_SearchReportIDs" value="" />
	<input type="hidden" name="sRF_SearchFolder" id="sRF_SearchFolder" value="0" />
	<input type="hidden" name="sRF_PreviousTask" id="sRF_PreviousTask" value="" />
	<input type="hidden" name="sRF_RearrangeCrtIds" id="sRF_RearrangeCrtIds" value="15913,15914,15915,15916" />
	<input type="hidden" name="sRF_RearrangeCrtChecked" id="sRF_RearrangeCrtChecked" value="" />
	<input type="hidden" name="sRF_ScrollPosition" id="sRF_ScrollPosition" value="" />
	<input type="hidden" name="sRF_SameTitle" id="sRF_SameTitle" value="True" />
	<input type="hidden" name="sRF_IncludePA" id="sRF_IncludePA" value="False" />

					</td>
					<TD valign="top" align="right" id='cell6'>
						
<!-- Side Bar -->
					</TD>
				</tr>
				<tr>
					<td colspan='3' valign="bottom" align="right" id='cell5'>
						
<!-- footer -->

<!-- Script google analytics -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-5878198-7']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
