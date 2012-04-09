<%@ Page Inherits="ghy.Index" Language="c#" %>
<%@ Register assembly="RedirectDomain" namespace="Ghy.RedirectDomain" tagPrefix="ghy" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>光华园网站 - 西南财经大学校园学生门户 - 服务西财师生，营造校园文化</title>
<meta name="description" content="西南财经大学党委宣传部领导下的校园门户网站，包括新闻网，思政网，学习网，生活网，魅影无限，音乐天堂，软件下载，分类信息，二手交易，文苑，草堂茗香论坛，BLOG等。"/>
<meta name="keywords" content="西南财经大学,西南财大,swufe,学生门户,光华,柳林"/>

<link rel="stylesheet" type="text/css" href="index2011/css20110529/reset.css" />
<link rel="stylesheet" type="text/css" href="index2011/css20110529/style2.css" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<script src="index2011/script20110529/jquery-1.6.1.min.js" type="text/javascript"></script>
</head>

<body>
<ghy:IPRedirector runat="server" id="redirector" NotRedirectIPReg="^222.197|^192.168|^125.69.85.|^10.|^182.148.202|^202.115" TargetUrl="http://ghy.swufe.edu.cn/"></ghy:IPRedirector>
<form id="BaseForm" runat="server">
<div id="head"><%=DateTime.Now.Month %>月<%=DateTime.Now.Day%>日   财大</div>

<ul class="nav">
	<li><a href="swufenews/" target="_blank">新闻</a></li>
	<li><a href="idea08/" target="_blank">思想</a></li>
  <li><a href="study09/" target="_blank">学习</a></li>
  <li><a href="life/" target="_blank">生活</a></li>
  <li><a href="lit08/" target="_blank">文苑</a></li>
  <li><a href="http://music.ghy.cn" target="_blank">音乐</a></li>
  <li><a href="http://movie.ghy.cn" target="_blank">电影</a></li>
  <li><a href="http://soft.ghy.cn" target="_blank">软件</a></li>
  <li><a href="http://com.ghy.cn" target="_blank">社团社区</a></li>
  <li id="ct"><a href="http://bbs.ghy.cn" target="_blank">草堂茗香</a></li>
</ul>

<ul class="undernav">
	<li class="current" tab-id="xyts">校园透视 |</li>
  <li tab-id="rwzf">人物专访 |</li>
  <li tab-id="xydc">校园调查</li>
  <a href="http://swufe.cuepa.cn/" target="_blank">校园快报</a>
</ul>

<div id="yuanchuangandbanner">
	<div id="yuanchuang">
    	<ul class="yctab">
      	<li class="current" tab-id="xyts"><span>校</span>园透视</li>
      	<li tab-id="rwzf"><span>人</span>物专访</li>
      	<li tab-id="xydc"><span>校</span>园调查</li>
      </ul>
      
        <div class="yccontent current" tab-id="xyts">
        	<ul>
              	<asp:DropDownList ID="InfoList_4_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">4</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1352</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">10</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		        </asp:DropDownList>
                <asp:Repeater ID="InfoList_4" runat="server">
                <itemtemplate>
           	  		<li>
              			<span class="pretext">
                        	<a href="swufenews/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank">[<%# Eval("Class2Name")%>]</a>
                        </span>
                        <span class="text">
                        	<a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank" title="<%# TranslateContent(Eval("Title"))%>"><%# CutWord(TranslateContent(Eval("Title")),9,true)%></a>
                        </span>
                    </li>                    
                </itemtemplate>
            	</asp:Repeater>
            </ul>
            <div class="morelink">
				<a href="http://news.ghy.cn" target="_blank" title="更多校园透视">>>更多校园透视</a>
			</div>
        </div>
        <div class="yccontent" tab-id="rwzf">
        	<asp:DropDownList ID="InfoList_30_Parameter" Visible="False" Runat="server">
               	<asp:ListItem Value="BoardID">4</asp:ListItem>
                <asp:ListItem Value="Class1ID">2755</asp:ListItem>
                <asp:ListItem Value="Class2ID">0</asp:ListItem>
                <asp:ListItem Value="Class3ID">0</asp:ListItem>
                <asp:ListItem Value="InfoCount">1</asp:ListItem>
                <asp:ListItem Value="OrderItem">IsAreaTop</asp:ListItem>
                <asp:ListItem Value="Order">desc</asp:ListItem>
            </asp:DropDownList>
            <asp:Repeater ID="InfoList_30" runat="server">
            <ItemTemplate>
                <div>
                	<a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank"><img src="<%# Eval("InfoImage")%>" alt="<%# Eval("Title")%>"/></a>
                </div>
            	<div>
                	<a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank"><%#  CutWord(TranslateContent(Eval("Title")),30,true)%></a>
                </div>
            	<div class="morelink"><a href="swufenews/list.aspx?Class1ID=2755" target="_blank">>>拜访更多人物</a></div>
            </ItemTemplate>
            </asp:Repeater>
        
        	
        </div>
        <div class="yccontent" tab-id="xydc">
    <ul id="show">
    </ul>
            <div class="morelink">
                <a href="http://ghy.cn/votesystem/" target="_blank">>>查看往期结果</a>
            </div>
        </div>
    </div>
    <div id="turnpic">
    	<ul id="bannerlist" class="picbox">
      	<asp:DropDownList ID="InfoList_1111_Parameter" Visible="False" runat="server">
            <asp:ListItem Value="BoardID">31</asp:ListItem>
            <asp:ListItem Value="Class1ID">3527</asp:ListItem>
            <asp:ListItem Value="Class2ID">0</asp:ListItem>
            <asp:ListItem Value="Class3ID">0</asp:ListItem>
            <asp:ListItem Value="InfoCount">6</asp:ListItem>
            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
            <asp:ListItem Value="Order">desc</asp:ListItem>
          </asp:DropDownList>
            <asp:Repeater ID="InfoList_1111" runat="server">
              <itemtemplate>
              	<li>
                	<a href="detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank"><img lazy-src="<%# Eval("InfoImage")%>"  alt=""/></a>
                </li>
              </itemtemplate>
            </asp:Repeater>
      </ul>
        <div class="contirlbar">
   	    <div id="leftbutton"></div>
            <ul id="sbannerlist" class="imglist">
          	<asp:DropDownList ID="InfoList_8888_Parameter" Visible="False" runat="server">
                <asp:ListItem Value="BoardID">31</asp:ListItem>
                <asp:ListItem Value="Class1ID">3527</asp:ListItem>
                <asp:ListItem Value="Class2ID">0</asp:ListItem>
                <asp:ListItem Value="Class3ID">0</asp:ListItem>
                <asp:ListItem Value="InfoCount">6</asp:ListItem>
                <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                <asp:ListItem Value="Order">desc</asp:ListItem>
              </asp:DropDownList>
                <asp:Repeater ID="InfoList_8888" runat="server">
                  <itemtemplate>
                      <li source-name="<%# Eval("SourceName")%>"><img lazy-src="<%# Eval("InfoImage")%>" alt=""/></li>
                  </itemtemplate>
                </asp:Repeater>
          </ul>
            <div id="rightbutton"></div>
      </div>
  </div>
</div>
<div id="wenfilmbar">
	<div id="wenfilmcontent">
    	
	<asp:DropDownList ID="InfoList_movie_Parameter" Visible="False" Runat="server">
		<asp:ListItem Value="BoardID">32</asp:ListItem>
		<asp:ListItem Value="Class1ID">3898</asp:ListItem>
		<asp:ListItem Value="Class2ID">0</asp:ListItem>
		<asp:ListItem Value="Class3ID">0</asp:ListItem>
		<asp:ListItem Value="InfoCount">1</asp:ListItem>
		<asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		<asp:ListItem Value="Order">desc</asp:ListItem>
		</asp:DropDownList>
	    <asp:Repeater ID="InfoList_movie" runat="server">
        <ItemTemplate>
        
        <marquee width="930px" height="29px" direction="left" scrollamount="3">温江太平洋影城<%# CutWord(TranslateContent (Eval("Title")),6,false)%>场次预告——<%#Eval("Content")%></marquee>
        
        </ItemTemplate>
        </asp:Repeater>
	</div>
</div>
<div id="news1">
	<div id="speciallist">
    	<ul class="specialtab">
        	<li class="cur">最新</li>
        </ul>
    	<ul class="newspecial">
        	<a href="special/2011new/" target="_blank"><img src="index2011/smallbanner/2011new.jpg" alt="新生专题"/></a>
        </ul>
        <ul class="specialhis">
            <li><a target="_blank" href="special/2011sanxiaxiang/">2011光华园三下乡专题</a></li>
            <li><a target="_blank" href="special/2011new">2011新生专题</a></li>
	    <li><a target="_blank" href="special/2011JunXun">10军训记忆</a></li>
            <li><a target="_blank" href="special/2011graduation/">11毕业专题</a></li>
            <li><a target="_blank" href="special/2010shishang/">2010时尚专题</a></li>
            <li><a target="_blank" href="special/2010XiaoChe/">校车时刻表</a></li>
            <li><a target="_blank" href="special/2010GanEn/">2010感恩专题</a></li>
            <li><a target="_blank" href="special/201090Hou/index.html">90后专题</a></li>
            <li><a target="_blank" href="special/2010JiaoShiJie/">2010教师节专题</a></li>
            <li><a target="_blank" href="special/2010freshman/">2010新生专题</a></li>
            <li><a target="_blank" href="special/2010graduation/">10毕业专题</a></li>
            <li><a target="_blank" href="http://ghy.swufe.edu.cn/special/2009image/">2009第五届影像大赛</a></li>
        </ul>
    </div>
  <div id="mainnews">
  	<div class="maintab">
  		<h2><strong>校</strong>园新闻</h2>
    	<ul>
        <li tab-id="maintab-0" class="current">院系</li>
        <li tab-id="maintab-1">社团</li>
        <li tab-id="maintab-2">时评</li>
        <li tab-id="maintab-3">资讯</li>
        <li tab-id="maintab-4">其他</li>
      </ul>
    </div>
        <div id="maincontent">
        	
            <ul tab-id="maintab-0" class="maincon  current">
                	<asp:DropDownList ID="InfoList_2_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">1156</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">18</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Repeater ID="InfoList_2" runat="server">
                    <itemtemplate>
                		<li>
                            <span class="pretext">
                                <a href="swufenews/list.aspx?Class2ID=<%# Eval("Class2ID")%>" title="<%# Eval("Class2Name")%>" target="_blank">[<%# Eval("Class2Name")%>]</a>
                            </span>
                            <span class="text">
                                <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                            </span>
                        </li>                               
                	</itemtemplate>
                	</asp:Repeater>
          			
                </ul>
            <ul tab-id="maintab-1" class="maincon">
          			<asp:DropDownList ID="InfoList_3_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">1134</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">18</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_3" runat="server">
                        <itemtemplate>
                            <li>
                                <span class="pretext">
                                    <a href="swufenews/list.aspx?Class2ID=<%# Eval("Class2ID")%>" title="<%# Eval("Class2Name")%>" target="_blank">[<%# Eval("Class2Name")%>]</a>
                                </span>
                                <span class="text">
                                    <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                                </span>
                            </li>
                        </itemtemplate>
                    </asp:Repeater>
                </ul>
            <ul tab-id="maintab-2" class="maincon">
                	<asp:DropDownList ID="InfoList_44_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">3987</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">18</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_44" runat="server">
                    <itemtemplate>
                         <li>
                            <span class="pretext">
                                <a href="swufenews/list.aspx?Class2ID=<%# Eval("Class2ID")%>" title="<%# Eval("Class2Name")%>" target="_blank">[<%# Eval("Class2Name")%>]</a>
                            </span>
                            <span class="text">
                                <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                            </span>
                        </li>
					</itemtemplate>
                    </asp:Repeater>
          			
                </ul>
            <ul tab-id="maintab-3" class="maincon">
                	<asp:DropDownList ID="InfoList_51_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">4</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1353</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">17</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_51" runat="server">
                    <itemtemplate>
                         	<li>
                                
                                <span class="text">
                                    <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent(Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),21,true)%></a>
                                </span>
                            </li>         
					</itemtemplate>
                    </asp:Repeater>
                   	<li><a href="swufenews/list.aspx?Class1ID=1353" target="_blank">&gt;&gt; 更多校园资讯</a> <a href="http://news.ghy.cn" target="_blank">&gt;&gt; 进入新闻网</a></li>
          			
                </ul>
            <ul tab-id="maintab-4" class="maincon">
                	<asp:DropDownList ID="InfoList_45_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">1143</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">6</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_45" runat="server">
                    <itemtemplate>
                    		<li>
                                <span class="pretext">
                                    <a href="swufenews/list.aspx?Class1ID=<%# Eval("Class1ID")%>" title="<%# Eval("Class1Name")%>" target="_blank">[<%# Eval("Class1Name")%>]</a>
                                </span>
                                <span class="text">
                                    <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent(Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                                </span>
                            </li>   
                     </itemtemplate>
                    </asp:Repeater>
 		            <asp:DropDownList ID="InfoList_47_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">1146</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">6</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_47" runat="server">
                    <itemtemplate>
                    		<li>
                                <span class="pretext">
                                    <a href="swufenews/list.aspx?Class1ID=<%# Eval("Class1ID")%>" title="<%# Eval("Class1Name")%>" target="_blank">[<%# Eval("Class1Name")%>]</a>
                                </span>
                                <span class="text">
                                    <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                                </span>
                            </li>   
					</itemtemplate>
                    </asp:Repeater>
 		            <asp:DropDownList ID="InfoList_46_Parameter" Visible="False" Runat="server">
                        <asp:ListItem Value="BoardID">4</asp:ListItem>
                        <asp:ListItem Value="Class1ID">1107</asp:ListItem>
                        <asp:ListItem Value="Class2ID">0</asp:ListItem>
                        <asp:ListItem Value="Class3ID">0</asp:ListItem>
                        <asp:ListItem Value="InfoCount">6</asp:ListItem>
                        <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                        <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
		            <asp:Repeater ID="InfoList_46" runat="server">
                    <itemtemplate>
                    	<li>
                            <span class="pretext">
                                <a href="swufenews/list.aspx?Class1ID=<%# Eval("Class1ID")%>" title="<%# Eval("Class1Name")%>" target="_blank">[<%# Eval("Class1Name")%>]</a>
                            </span>
                            <span class="text">
                                <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),17,true)%></a>
                            </span>
                        </li>   
					</itemtemplate>
                    </asp:Repeater>
          			
                </ul>
                
            <ul id="picnews">
                 <asp:DropDownList ID="InfoList_8_Parameter" Visible="False" Runat="server">
                      <asp:ListItem Value="BoardID">4</asp:ListItem>
                      <asp:ListItem Value="Class1ID">1140</asp:ListItem>
                      <asp:ListItem Value="Class2ID">0</asp:ListItem>
                      <asp:ListItem Value="Class3ID">0</asp:ListItem>
                      <asp:ListItem Value="InfoCount">4</asp:ListItem>
                      <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                      <asp:ListItem Value="Order">desc</asp:ListItem>
                  </asp:DropDownList>
                  <asp:Repeater ID="InfoList_8" runat="server">
                      <ItemTemplate>
                      	<li class="piccon">
                        	<a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank"><img lazy-src="<%# Eval("InfoImage")%>"  alt=""/></a>
                          <a href="swufenews/detail.aspx?ID=<%# Eval("InfoID")%>" target="_blank"><%# CutWord(TranslateContent(Eval("Title")),8,false)%></a>
                        </li>
                      </itemtemplate>
                  </asp:Repeater>
            </ul>
        </div>
        <div class="AD">
		<asp:DropDownList ID="InfoList_AD1_Parameter" Visible="False" Runat="server">
            <asp:ListItem Value="InfoID">36831</asp:ListItem>
            <asp:ListItem Value="BoardID">31</asp:ListItem>
            <asp:ListItem Value="Class1ID">0</asp:ListItem>
            <asp:ListItem Value="Class2ID">0</asp:ListItem>
            <asp:ListItem Value="Class3ID">0</asp:ListItem>
            <asp:ListItem Value="InfoCount">1</asp:ListItem>
            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
            <asp:ListItem Value="Order">desc</asp:ListItem>
		</asp:DropDownList>
	    <asp:Repeater ID="InfoList_AD1" runat="server">
        <ItemTemplate>
		<IFRAME border=0 name=alsoad marginWidth=0 marginHeight=0 lazy-src="iframe/detail.aspx?ID=<%# Eval("InfoID")%>" frameBorder=no width=680 height=80 scrolling=no ></IFRAME>
        </ItemTemplate>
        </asp:Repeater>
        </div>
        
    </div>
</div>
<div id="news2">
	
	<div class="lifespecial" id="life1">
    	<div class="lifespecialtitle">时尚专题</div>
        <a href="special/2010shishang/" target="_blank"><img src="index2011/images20110529/fashion.jpg" alt="时尚专题" /></a>
    </div>
  	<div class="lifespecial">
   		<div class="lifespecialtitle">外卖专题</div>
   		<a href="life/detail.aspx?ID=48026" target="_blank"><img src="index2011/images20110529/waimai.jpg" alt="外卖专题" /> </a>
  	</div>
  	<div class="lifespecial">
   		
  	</div>
    
    <ul class="lovelife">
            <asp:DropDownList ID="InfoList_12_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">9</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1542</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">2</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
	                <asp:Repeater ID="InfoList_12" runat="server">
                    <itemtemplate>
                    	<li>
                        	<span class="pretext">
                            	<a href="life/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="life/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),15,true)%></a>
                            </span>
                        </li>
                    </itemtemplate>
                    </asp:Repeater>
		            <asp:DropDownList ID="InfoList_15_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">9</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1540</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">2</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
	                <asp:Repeater ID="InfoList_15" runat="server">
                    <itemtemplate>
                        <li>
                        	<span class="pretext">
                            	<a href="life/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="life/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),15,true)%></a>
                            </span>
                        </li>
                    </itemtemplate>
                    </asp:Repeater>
					<asp:DropDownList ID="InfoList_13_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">9</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1541</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">2</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
	                <asp:Repeater ID="InfoList_13" runat="server">
                    <itemtemplate>
                        <li>
                        	<span class="pretext">
                            	<a href="life/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="life/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),15,true)%></a>
                            </span>
                        </li>
                    </itemtemplate>
                    </asp:Repeater>
		            <asp:DropDownList ID="InfoList_14_Parameter" Visible="False" Runat="server">
		            <asp:ListItem Value="BoardID">9</asp:ListItem>
		            <asp:ListItem Value="Class1ID">1539</asp:ListItem>
		            <asp:ListItem Value="Class2ID">0</asp:ListItem>
		            <asp:ListItem Value="Class3ID">0</asp:ListItem>
		            <asp:ListItem Value="InfoCount">2</asp:ListItem>
		            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		            <asp:ListItem Value="Order">desc</asp:ListItem>
		            </asp:DropDownList>
	                <asp:Repeater ID="InfoList_14" runat="server">
                    <itemtemplate>
                        <li>
                        	<span class="pretext">
                            	<a href="life/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="life/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),15,true)%></a>
                            </span>
                        </li>
					</itemtemplate>
                    </asp:Repeater>
        </ul>
        
    <div id="study">
    	<ul class="lovestudy">
            		<asp:DropDownList ID="InfoList_77_Parameter" Visible="False" Runat="server">
		              <asp:ListItem Value="BoardID">18</asp:ListItem>
		              <asp:ListItem Value="Class1ID">2559</asp:ListItem>
		              <asp:ListItem Value="Class2ID">0</asp:ListItem>
		              <asp:ListItem Value="Class3ID">0</asp:ListItem>
		              <asp:ListItem Value="InfoCount">3</asp:ListItem>
		              <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		              <asp:ListItem Value="Order">desc</asp:ListItem>
		              </asp:DropDownList>
		              <asp:Repeater ID="InfoList_77" runat="server">
                      <itemtemplate>
						<li>
                        	<span class="pretext">
                            	<a href="study09/information.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="study09/viewinfo.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),12,true)%></a>
                            </span>
                        </li>
                      </itemtemplate>
                      </asp:Repeater>
		              <span class="text"><a href="life/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),15,true)%></a></span>
		              <asp:DropDownList ID="InfoList_78_Parameter" Visible="False" Runat="server">
		              <asp:ListItem Value="BoardID">18</asp:ListItem>
		              <asp:ListItem Value="Class1ID">3390</asp:ListItem>
		              <asp:ListItem Value="Class2ID">0</asp:ListItem>
		              <asp:ListItem Value="Class3ID">0</asp:ListItem>
		              <asp:ListItem Value="InfoCount">6</asp:ListItem>
		              <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		              <asp:ListItem Value="Order">desc</asp:ListItem>
		              </asp:DropDownList>
		              <asp:Repeater ID="InfoList_78" runat="server">
                      <itemtemplate>                      
						<li>
                        	<span class="pretext">
                            	<a href="study09/resources.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="study09/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),12,true)%></a>
                            </span>
                        </li>
                      </itemtemplate>
                      </asp:Repeater>
            </ul>
    	<div id="studyinfo">
   	    <div class="studyinfolist" id="stuimgbak1"><a href="study09/information.aspx?Class2ID=2586" target="_blank"><img class="cur" src="index2011/images20110529/kykzy.jpg" alt=""  /></a></div>
            <div class="studyinfolist" id="stuimgbak2"><a href="study09/information.aspx?Class2ID=2560" target="_blank"><img src="index2011/images20110529/lxjyy.jpg" alt=""  /></a></div>
            <div class="studyinfolist" id="stuimgbak3"><a href="study09/information.aspx?Class2ID=2576" target="_blank"><img src="index2011/images20110529/jgqyy.jpg" alt=""  /></a></div>
            <div class="studyinfolist" id="stuimgbak4"><a href="study09/information.aspx?Class2ID=2578" target="_blank"><img src="index2011/images20110529/wxsjy.jpg" alt=""  /></a></div>
        </div>
        <ul class="studysourcelist">
        	<li><a href="study09/resources.aspx?Class2ID=3634" target="_blank">文学</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3635" target="_blank">电脑应用</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3636" target="_blank">经济管理</a></li>
          <li><a href="study09/resources.aspx?Class2ID=2544" target="_blank">外语学习</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3637" target="_blank">报刊杂志</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3638" target="_blank">实用系列</a></li>
        </ul>
    </div>
</div>
<div id="news3">
<div id="literature">
      <asp:DropDownList ID="InfoList_18_Parameter" Visible="False" Runat="server">
		                <asp:ListItem Value="BoardID">16</asp:ListItem>
                            <asp:ListItem Value="Class1ID">1522</asp:ListItem>
                            <asp:ListItem Value="Class2ID">0</asp:ListItem>
                            <asp:ListItem Value="Class3ID">0</asp:ListItem>
                            <asp:ListItem Value="InfoCount">11</asp:ListItem>
                            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
                            <asp:ListItem Value="Order">desc</asp:ListItem>
		              </asp:DropDownList>
		              <asp:Repeater ID="InfoList_18" runat="server">
                      <HeaderTemplate><ul id="literaturelist"></HeaderTemplate>
                      <itemtemplate>
						<li>
                        	<span class="pretext">
                            	<a href="lit08/list.aspx?Class2ID=<%# Eval("Class2ID")%>" target="_blank"><%# Eval("Class2Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="lit08/view.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),12,true)%></a>
                            </span>
                        </li>
                      </itemtemplate>
                      <FooterTemplate></ul></FooterTemplate>
                      </asp:Repeater>        
</div>
<div id="idea">
      <div class="AD">
    	<asp:DropDownList ID="InfoList_AD2_Parameter" Visible="False" Runat="server">
            <asp:ListItem Value="InfoID">36833</asp:ListItem>
            <asp:ListItem Value="BoardID">31</asp:ListItem>
            <asp:ListItem Value="Class1ID">0</asp:ListItem>
            <asp:ListItem Value="Class2ID">0</asp:ListItem>
            <asp:ListItem Value="Class3ID">0</asp:ListItem>
            <asp:ListItem Value="InfoCount">1</asp:ListItem>
            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
            <asp:ListItem Value="Order">desc</asp:ListItem>
		</asp:DropDownList>
	    <asp:Repeater ID="InfoList_AD2" runat="server">
        <ItemTemplate>
		<IFRAME border=0 name=alsoad marginWidth=0 marginHeight=0 lazy-src="iframe/detail.aspx?ID=<%# Eval("InfoID")%>" frameBorder=no width=680 height=80 scrolling=no ></IFRAME>
        </ItemTemplate>
        </asp:Repeater>
    </div>
<div id="idealist">
<div style="float:left;clear:right">
 <asp:DropDownList ID="InfoList_111_Parameter" Visible="False" Runat="server">
		              <asp:ListItem Value="BoardID">11</asp:ListItem>
		              <asp:ListItem Value="Class1ID">1467</asp:ListItem>
		              <asp:ListItem Value="Class2ID">0</asp:ListItem>
		              <asp:ListItem Value="Class3ID">0</asp:ListItem>
		              <asp:ListItem Value="InfoCount">8</asp:ListItem>
		              <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		              <asp:ListItem Value="Order">desc</asp:ListItem>
		              </asp:DropDownList>
		              <asp:Repeater ID="InfoList_111" runat="server">
                      <HeaderTemplate><ul></HeaderTemplate>
                      <itemtemplate>
						<li>
                        	<span class="pretext">
                            	<a href="idea08/list.aspx?Class1ID=<%# Eval("Class1ID")%>" target="_blank"><%# Eval("Class1Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="idea08/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),12,true)%></a>
                            </span>
                        </li>
                      </itemtemplate>
                      <FooterTemplate></ul></FooterTemplate>
                      </asp:Repeater>        
</div>
<div style="float:left;clear:right">
<asp:DropDownList ID="InfoList_29_Parameter" Visible="False" Runat="server">
		              <asp:ListItem Value="BoardID">11</asp:ListItem>
		              <asp:ListItem Value="Class1ID">1310</asp:ListItem>
		              <asp:ListItem Value="Class2ID">0</asp:ListItem>
		              <asp:ListItem Value="Class3ID">0</asp:ListItem>
		              <asp:ListItem Value="InfoCount">8</asp:ListItem>
		              <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
		              <asp:ListItem Value="Order">desc</asp:ListItem>
		              </asp:DropDownList>
		              <asp:Repeater ID="InfoList_29" runat="server">
                      <HeaderTemplate><ul></HeaderTemplate>
                      <itemtemplate>
						<li>
                        	<span class="pretext">
                            	<a href="idea08/list.aspx?Class1ID=<%# Eval("Class1ID")%>" target="_blank"><%# Eval("Class1Name")%></a>
                           	</span>-
                            <span class="text">
                            	<a href="idea08/detail.aspx?ID=<%# Eval("InfoID")%>" title="<%# TranslateContent (Eval("Title"))%>" target="_blank"><%# CutWord(TranslateContent (Eval("Title")),12,true)%></a>
                            </span>
                        </li>
                      </itemtemplate>
                      <FooterTemplate></ul></FooterTemplate>
                      </asp:Repeater>        
</div>
  
</div>

</div>
</div>
<div id="foot">
	<ul class="aboutus">
  	<li><a href="aboutus/" target="_blank">关于光华园网站</a></li>
    <li><a href="aboutus/2.html" target="_blank">关于前进动力工作室</a></li>
    <li><a href="aboutus/5.html" target="_blank">网站成员</a></li>
    <li><a href="aboutus/8.html" target="_blank">加入我们</a></li>
    <li><a href="aboutus/11.html" target="_blank">联系方式</a></li>
    <li><a href="aboutus/12.html" target="_blank">广告宣传</a></li>
  </ul>
    <div class="AD">
    	<asp:DropDownList ID="InfoList_AD3_Parameter" Visible="False" Runat="server">
            <asp:ListItem Value="InfoID">36832</asp:ListItem>
            <asp:ListItem Value="BoardID">31</asp:ListItem>
            <asp:ListItem Value="Class1ID">0</asp:ListItem>
            <asp:ListItem Value="Class2ID">0</asp:ListItem>
            <asp:ListItem Value="Class3ID">0</asp:ListItem>
            <asp:ListItem Value="InfoCount">1</asp:ListItem>
            <asp:ListItem Value="OrderItem">InfoID</asp:ListItem>
            <asp:ListItem Value="Order">desc</asp:ListItem>
		</asp:DropDownList>
	    <asp:Repeater ID="InfoList_AD3" runat="server">
        <ItemTemplate>
		<IFRAME border=0 name=alsoad marginWidth=0 marginHeight=0 lazy-src="iframe/detail.aspx?ID=<%# Eval("InfoID")%>" frameBorder=no width=680 height=80 scrolling=no ></IFRAME>
        </ItemTemplate>
        </asp:Repeater>
    </div>
    <div id="end">
     友情链接：
		 <br />
    	 <ul>
	          <li>
	          <a target="_blank" href="http://www.swufe.edu.cn/">财大首页</a> | 
	          <a target="_blank" href="http://jwc.swufe.edu.cn/jwc/">教务处</a> | 
	          <a target="_blank" href="http://tw.swufe.edu.cn/">校团委</a> | 
	          <a target="_blank" href="http://tw.swufe.edu.cn/">学生会</a> | 
	          <a target="_blank" href="http://job.swufe.edu.cn/zjc/index.aspx">就业信息网</a> | 
	          <a target="_blank" href="http://www.lib.swufe.edu.cn/tmp/shuziziyuan.html">图书馆数字资源</a> | 
	          <a target="_blank" href="http://fantasy.swufe.edu.cn/">幻想空间</a> | 
	          <a target="_blank" href="http://iweb.swufe.edu.cn/etv/">校电视台</a> | 
	          <a target="_blank" href="http://english.swufe.edu.cn/">英语学习</a> | 
	          <a target="_blank" href="http://gu.swufe.edu.cn/">研究生天地</a> | 
	          <a target="_blank" href="http://xinxie.swufe.edu.cn/xljk/article_index.asp">心谐网</a>
	          
	        
	          </li>
	          <li>
	          <a target="_blank" href="ftp/" style="color:red">财大校内FTP使用指南</a> |
	          <a target="_blank" href="http://www.stuhome.net/">学生之家</a> | 
	          <a target="_blank" href="http://www.dormforce.net/">栋力无限</a> | 
	          <a target="_blank" href="http://www.univs.cn/">中国大学生在线</a> |  
	          <a target="_blank" href="http://sseaa.swufe.edu.cn/">学生广告实验公司</a> | 
	          <a target="_blank" href="http://www.konggu.net/">空谷校园</a> |
	          <a target="_blank" href="http://www.cscmbbs.com/">川师影视学院</a>
	          
	          </li>
	          <li>
	          <a target="_blank" href="http://www.ourscu.com/">四川大学论坛</a> |
	          <a target="_blank" href="http://pt.wjl.cn/">川大望江楼</a> |
	          <a target="_blank" href="http://shop.swufe.edu.cn/">巴巴购</a> |
		  <a target="_blank" href="http://etv.swufe.edu.cn/">校园电视台</a>
	          </li>
	      </ul>
          Copyright 2001-2011 GHY.CN 西南财经大学党委宣传部 前进动力工作室
            <br />
            蜀ICP备07004602号　　联系电话：028 - 87092700 (柳林) 
            <br />
			建议使用1024*768或更高分辨率浏览本站
    </div>
    
</div>
</form>
<script src="index2011/script20110529/picTurner.js" type="text/javascript"></script>
<script src="index2011/script20110529/index.js" type="text/javascript"></script>
<!----流量监控---->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4003628-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
<!----流量监控 结束---->
<script type="text/javascript" language="Javascript" src="tongji.js"></script>
</body>
</html>