<%@ Page Inherits="ghy.Index" Language="c#" %>
<%@ Register assembly="RedirectDomain" namespace="Ghy.RedirectDomain" tagPrefix="ghy" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�⻪԰��վ - ���ϲƾ���ѧУ԰ѧ���Ż� - ��������ʦ����Ӫ��У԰�Ļ�</title>
<meta name="description" content="���ϲƾ���ѧ��ί�������쵼�µ�У԰�Ż���վ��������������˼������ѧϰ��������������Ӱ���ޣ��������ã�������أ�������Ϣ�����ֽ��ף���Է������������̳��BLOG�ȡ�"/>
<meta name="keywords" content="���ϲƾ���ѧ,���ϲƴ�,swufe,ѧ���Ż�,�⻪,����"/>

<link rel="stylesheet" type="text/css" href="index2011/css20110529/reset.css" />
<link rel="stylesheet" type="text/css" href="index2011/css20110529/style2.css" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<script src="index2011/script20110529/jquery-1.6.1.min.js" type="text/javascript"></script>
</head>

<body>
<ghy:IPRedirector runat="server" id="redirector" NotRedirectIPReg="^222.197|^192.168|^125.69.85.|^10.|^182.148.202|^202.115" TargetUrl="http://ghy.swufe.edu.cn/"></ghy:IPRedirector>
<form id="BaseForm" runat="server">
<div id="head"><%=DateTime.Now.Month %>��<%=DateTime.Now.Day%>��   �ƴ�</div>

<ul class="nav">
	<li><a href="swufenews/" target="_blank">����</a></li>
	<li><a href="idea08/" target="_blank">˼��</a></li>
  <li><a href="study09/" target="_blank">ѧϰ</a></li>
  <li><a href="life/" target="_blank">����</a></li>
  <li><a href="lit08/" target="_blank">��Է</a></li>
  <li><a href="http://music.ghy.cn" target="_blank">����</a></li>
  <li><a href="http://movie.ghy.cn" target="_blank">��Ӱ</a></li>
  <li><a href="http://soft.ghy.cn" target="_blank">���</a></li>
  <li><a href="http://com.ghy.cn" target="_blank">��������</a></li>
  <li id="ct"><a href="http://bbs.ghy.cn" target="_blank">��������</a></li>
</ul>

<ul class="undernav">
	<li class="current" tab-id="xyts">У԰͸�� |</li>
  <li tab-id="rwzf">����ר�� |</li>
  <li tab-id="xydc">У԰����</li>
  <a href="http://swufe.cuepa.cn/" target="_blank">У԰�챨</a>
</ul>

<div id="yuanchuangandbanner">
	<div id="yuanchuang">
    	<ul class="yctab">
      	<li class="current" tab-id="xyts"><span>У</span>԰͸��</li>
      	<li tab-id="rwzf"><span>��</span>��ר��</li>
      	<li tab-id="xydc"><span>У</span>԰����</li>
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
				<a href="http://news.ghy.cn" target="_blank" title="����У԰͸��">>>����У԰͸��</a>
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
            	<div class="morelink"><a href="swufenews/list.aspx?Class1ID=2755" target="_blank">>>�ݷø�������</a></div>
            </ItemTemplate>
            </asp:Repeater>
        
        	
        </div>
        <div class="yccontent" tab-id="xydc">
    <ul id="show">
    </ul>
            <div class="morelink">
                <a href="http://ghy.cn/votesystem/" target="_blank">>>�鿴���ڽ��</a>
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
        
        <marquee width="930px" height="29px" direction="left" scrollamount="3">�½�̫ƽ��Ӱ��<%# CutWord(TranslateContent (Eval("Title")),6,false)%>����Ԥ�桪��<%#Eval("Content")%></marquee>
        
        </ItemTemplate>
        </asp:Repeater>
	</div>
</div>
<div id="news1">
	<div id="speciallist">
    	<ul class="specialtab">
        	<li class="cur">����</li>
        </ul>
    	<ul class="newspecial">
        	<a href="special/2011new/" target="_blank"><img src="index2011/smallbanner/2011new.jpg" alt="����ר��"/></a>
        </ul>
        <ul class="specialhis">
            <li><a target="_blank" href="special/2011sanxiaxiang/">2011�⻪԰������ר��</a></li>
            <li><a target="_blank" href="special/2011new">2011����ר��</a></li>
	    <li><a target="_blank" href="special/2011JunXun">10��ѵ����</a></li>
            <li><a target="_blank" href="special/2011graduation/">11��ҵר��</a></li>
            <li><a target="_blank" href="special/2010shishang/">2010ʱ��ר��</a></li>
            <li><a target="_blank" href="special/2010XiaoChe/">У��ʱ�̱�</a></li>
            <li><a target="_blank" href="special/2010GanEn/">2010�ж�ר��</a></li>
            <li><a target="_blank" href="special/201090Hou/index.html">90��ר��</a></li>
            <li><a target="_blank" href="special/2010JiaoShiJie/">2010��ʦ��ר��</a></li>
            <li><a target="_blank" href="special/2010freshman/">2010����ר��</a></li>
            <li><a target="_blank" href="special/2010graduation/">10��ҵר��</a></li>
            <li><a target="_blank" href="http://ghy.swufe.edu.cn/special/2009image/">2009�����Ӱ�����</a></li>
        </ul>
    </div>
  <div id="mainnews">
  	<div class="maintab">
  		<h2><strong>У</strong>԰����</h2>
    	<ul>
        <li tab-id="maintab-0" class="current">Ժϵ</li>
        <li tab-id="maintab-1">����</li>
        <li tab-id="maintab-2">ʱ��</li>
        <li tab-id="maintab-3">��Ѷ</li>
        <li tab-id="maintab-4">����</li>
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
                   	<li><a href="swufenews/list.aspx?Class1ID=1353" target="_blank">&gt;&gt; ����У԰��Ѷ</a> <a href="http://news.ghy.cn" target="_blank">&gt;&gt; ����������</a></li>
          			
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
    	<div class="lifespecialtitle">ʱ��ר��</div>
        <a href="special/2010shishang/" target="_blank"><img src="index2011/images20110529/fashion.jpg" alt="ʱ��ר��" /></a>
    </div>
  	<div class="lifespecial">
   		<div class="lifespecialtitle">����ר��</div>
   		<a href="life/detail.aspx?ID=48026" target="_blank"><img src="index2011/images20110529/waimai.jpg" alt="����ר��" /> </a>
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
        	<li><a href="study09/resources.aspx?Class2ID=3634" target="_blank">��ѧ</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3635" target="_blank">����Ӧ��</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3636" target="_blank">���ù���</a></li>
          <li><a href="study09/resources.aspx?Class2ID=2544" target="_blank">����ѧϰ</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3637" target="_blank">������־</a></li>
          <li><a href="study09/resources.aspx?Class2ID=3638" target="_blank">ʵ��ϵ��</a></li>
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
  	<li><a href="aboutus/" target="_blank">���ڹ⻪԰��վ</a></li>
    <li><a href="aboutus/2.html" target="_blank">����ǰ������������</a></li>
    <li><a href="aboutus/5.html" target="_blank">��վ��Ա</a></li>
    <li><a href="aboutus/8.html" target="_blank">��������</a></li>
    <li><a href="aboutus/11.html" target="_blank">��ϵ��ʽ</a></li>
    <li><a href="aboutus/12.html" target="_blank">�������</a></li>
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
     �������ӣ�
		 <br />
    	 <ul>
	          <li>
	          <a target="_blank" href="http://www.swufe.edu.cn/">�ƴ���ҳ</a> | 
	          <a target="_blank" href="http://jwc.swufe.edu.cn/jwc/">����</a> | 
	          <a target="_blank" href="http://tw.swufe.edu.cn/">У��ί</a> | 
	          <a target="_blank" href="http://tw.swufe.edu.cn/">ѧ����</a> | 
	          <a target="_blank" href="http://job.swufe.edu.cn/zjc/index.aspx">��ҵ��Ϣ��</a> | 
	          <a target="_blank" href="http://www.lib.swufe.edu.cn/tmp/shuziziyuan.html">ͼ���������Դ</a> | 
	          <a target="_blank" href="http://fantasy.swufe.edu.cn/">����ռ�</a> | 
	          <a target="_blank" href="http://iweb.swufe.edu.cn/etv/">У����̨</a> | 
	          <a target="_blank" href="http://english.swufe.edu.cn/">Ӣ��ѧϰ</a> | 
	          <a target="_blank" href="http://gu.swufe.edu.cn/">�о������</a> | 
	          <a target="_blank" href="http://xinxie.swufe.edu.cn/xljk/article_index.asp">��г��</a>
	          
	        
	          </li>
	          <li>
	          <a target="_blank" href="ftp/" style="color:red">�ƴ�У��FTPʹ��ָ��</a> |
	          <a target="_blank" href="http://www.stuhome.net/">ѧ��֮��</a> | 
	          <a target="_blank" href="http://www.dormforce.net/">��������</a> | 
	          <a target="_blank" href="http://www.univs.cn/">�й���ѧ������</a> |  
	          <a target="_blank" href="http://sseaa.swufe.edu.cn/">ѧ�����ʵ�鹫˾</a> | 
	          <a target="_blank" href="http://www.konggu.net/">�չ�У԰</a> |
	          <a target="_blank" href="http://www.cscmbbs.com/">��ʦӰ��ѧԺ</a>
	          
	          </li>
	          <li>
	          <a target="_blank" href="http://www.ourscu.com/">�Ĵ���ѧ��̳</a> |
	          <a target="_blank" href="http://pt.wjl.cn/">��������¥</a> |
	          <a target="_blank" href="http://shop.swufe.edu.cn/">�Ͱ͹�</a> |
		  <a target="_blank" href="http://etv.swufe.edu.cn/">У԰����̨</a>
	          </li>
	      </ul>
          Copyright 2001-2011 GHY.CN ���ϲƾ���ѧ��ί������ ǰ������������
            <br />
            ��ICP��07004602�š�����ϵ�绰��028 - 87092700 (����) 
            <br />
			����ʹ��1024*768����߷ֱ��������վ
    </div>
    
</div>
</form>
<script src="index2011/script20110529/picTurner.js" type="text/javascript"></script>
<script src="index2011/script20110529/index.js" type="text/javascript"></script>
<!----�������---->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4003628-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
<!----������� ����---->
<script type="text/javascript" language="Javascript" src="tongji.js"></script>
</body>
</html>