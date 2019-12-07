<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<style>
		html,body{
			overflow: hidden;
		}
		/*body{*/
		/*	overflow-x:hidden;*/
		/*}*/
		/*.portlet-content {*/
        /*padding: 0;*/
        /* }*/
		/*.container-fluid{*/
		/*	padding-left: 0;*/
		/*	padding-right: 0;*/
		/*}*/
		/*th{*/
		/*	text-align: center;*/
		/*}*/
		/*.modify-pages li.lfr-nav-hover .delete-tab {*/
		/*    opacity: 0;*/
		/*}*/
		/*.lfr-alert-container{*/
		/*	display:none;*/
		/*}*/
		/*.nav_bar .nav_list li a{*/
		/*	height: 90px;*/
		/*	line-height: 90px;*/
		/*}*/
	</style>
    <script src="${javascript_folder}/common.js"></script>
    <script src="${javascript_folder}/pagination.js"></script>
    <script src="${javascript_folder}/bootstrap.datepicker.min.js"></script>
    <#-- <script src="${javascript_folder}/bootstrap.min.js"></script> -->
	<link rel="stylesheet" href="${javascript_folder}/datepicker.min.css" />
	<link rel="stylesheet" href="${javascript_folder}/bootstrap.min.css" />
</head>

<body class="${css_class}">
	
	<@liferay_ui["quick-access"] contentId="#main-content" />
	
	<@liferay_util["include"] page=body_top_include />
	
	<@liferay.control_menu />
	
	<div class="container-fluid" id="wrapper" style="padding:0;">
<#--		<header id="banner" role="banner">-->
<#--			-->
<#--			-->
<#--			<div class="nav_bar full_screen hidden-xs">-->
<#--	            <div class="min_width_1200">-->
<#--	                <div class="logo_container">-->
<#--	                <a href="/home"><img src="/images/index_logo.png" /></a>-->
<#--	                </div>-->
<#--	                &lt;#&ndash;-->
<#--	               <#include "${full_templates_path}/navigation.ftl" />-->
<#--	               &ndash;&gt;-->
<#--	             &lt;#&ndash;   <@liferay_portlet["runtime"]-->
<#--					    portletName="TopNavigation"-->
<#--					/>&ndash;&gt;-->
<#--	            </div>-->
<#--	        </div>-->
<#--			-->
<#--			<div class="visible-xs small_header_container">-->
<#--	            <div class="col-xs-12 small_header">-->
<#--	                <img class="left menu_icon" src="/images/index_menu_icon.png" />-->
<#--	                <span class="mobile_header_title">党务工作信息平台</span>-->
<#--	                &lt;#&ndash; 该div需要获取登录信息   &ndash;&gt;-->
<#--	                <div class="user_container">-->
<#--	                    <img class="user_icon right" src="/images/index_user_icon.png" />-->
<#--	                    <ul>-->
<#--	                        <li>组织员账号</li>-->
<#--	                        <li>-->
<#--	                            <button class="btn btn-default main_color_btn login_out_btn">退出</button>-->
<#--	                        </li>-->
<#--	                    </ul>-->
<#--	                </div>-->
<#--	            </div>-->
<#--	            <div class="mobile_nav_container full_screen">-->
<#--	                <div class="col-xs-12">-->
<#--	                    <div class="nav_title">-->
<#--	                        <span class="mobile_nav_title">我的导航</span>-->
<#--	                        <img class="right close_nav_icon" src="/images/colse_icon.png" />-->
<#--	                    </div>-->
<#--	                    <div class="mobile_list_container">-->
<#--	                      -->
<#--			              -->
<#--	                    </div>-->
<#--	                </div>-->
<#--	            </div>-->
<#--	        </div>-->
<#--		</header>-->
	
		<section id="content">
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}
	
				${portletDisplay.setTitle(the_title)}
	
				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
	
<#--		<footer class="hidden-xs">-->
<#--			<div class="link_container full_screen">-->
<#--	            <div class="min_width_1200">-->
<#--	              &lt;#&ndash;  <ul class="link_list">-->
<#--	                    <li><a>友情链接:</a></li>-->
<#--	                    <li><a href="http://www.swu.edu.cn/" target="_blank">西南大学</a></li>-->
<#--	                    <li><a href="http://www.lib.swu.edu.cn/" target="_blank">西南大学图书馆</a></li>-->
<#--	                    <li><a href="http://www.court.gov.cn/" target="_blank">中华人民共和国最高人民法院</a></li>-->
<#--	                    <li><a href="http://www.spp.gov.cn/" target="_blank">中华人民共和国最高人民检察院</a></li>-->
<#--	                    <li><a href="http://www.moj.gov.cn/" target="_blank">中华人民共和国司法部</a></li>-->
<#--	                    <li><a href="http://www.npc.gov.cn/" target="_blank">中国人大网</a></li>-->
<#--	                    <li><a href="http://www.gov.cn/" target="_blank">中国政府-中华人民共和国政府门户网站官网</a></li>-->
<#--	                </ul> &ndash;&gt;-->
<#--	            </div>-->
<#--	        </div>-->
<#--	        <div class="foot_bar full_screen">-->
<#--	            <div class="min_width_1200">-->
<#--	                <p>西南大学 版权所有     |     地址：重庆市北碚区天生路2号  邮编：400715     |     技术支持：重庆和贯科技有限公司</p>-->
<#--	                <#if !is_signed_in>-->
<#--						<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow" style="float:right;color:#fff"></a>-->
<#--					</#if>-->
<#--	            </div>-->
<#--	        </div>-->
<#--	-->
<#--		</footer>-->
	</div>
<#--	<div class="modal fade" id="hg_confirm" tabindex="-1" role="dialog" aria-labelledby="confirmLabel" aria-hidden="true">-->
<#--        <div class="modal-dialog">-->
<#--                <div class="modal-content">-->
<#--                    <div class="modal-header">-->
<#--                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">-->
<#--	                        &times;-->
<#--	                    </button>-->
<#--                        <h4 class="modal-title" id="confirmLabel"></h4>-->
<#--                    </div>-->
<#--                    <div class="modal-body"></div>-->
<#--                    <div class="modal-footer">-->
<#--                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>-->
<#--                        <button type="button" class="btn btn_main">确定</button>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--    </div>-->
	<@liferay_util["include"] page=body_bottom_include />
	
	<@liferay_util["include"] page=bottom_include />
</body>

</html>