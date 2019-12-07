<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport" />

    <@liferay_util["include"] page=top_head_include />
    <style>
        .container-fluid{
            padding-left: 0;
            padding-right: 0;
        }
        label.error{
            position: absolute;
            color: #ce0000;
            font-size: 12px;
            font-weight: normal;
        }
        th{
            text-align: center;
        }
        .modify-pages li.lfr-nav-hover .delete-tab {
            opacity: 0;
        }
        .lfr-alert-container{
            display:none;
        }
        .party_organization_list >li > a{
            width: 100%;
            height: 100%;
            display: inline-block;
        }
        .party_organization_list .page_on_first span{
            color:#ce0000;
        }
        div#edui1_iframeholder {
            height: 160px;
        }

        th , td {
            text-align: left;
        }
        #hg-form-container .col-sm-3.col-xs-3{
            padding:0!important;
        }
        #hg-form-container .col-sm-3.col-xs-3 .control-label{
            float:right;
            position:relative;
        }
        .party_organization_list .left_nav_on{
            background: #ce0000;
            color: #fff!important;
        }
        .party_organization_list .page_on_first.left_nav_on{
            background: transparent;
            color: #ce0000!important;
        }
        .portlet-content, .portlet-minimized .portlet-content-container {
            padding: 0px 0px 0px;
        }
        .portlet {
            margin-bottom: 0px;
            position: relative;
        }
        tbody.table_info td {
            padding: 10px;
        }
        .modal-dialog{
            left: 0 !important;
        }
    </style>

    <script src="${javascript_folder}/common.js"></script>
    <script src="${javascript_folder}/pagination.js"></script>
     <script src="${javascript_folder}/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${javascript_folder}/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="${javascript_folder}/css/common.min.css" />
    <link rel="stylesheet" type="text/css" href="${javascript_folder}/css/layout.min.css?v=2" />
    <link rel="stylesheet" type="text/css" href="${javascript_folder}/css/activity-manage.min.css" />
    <script src="${javascript_folder}/layui.js"></script>
    <link rel="stylesheet" href="${javascript_folder}/bootstrap.min.css" />
</head>
<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="layout_page full_screen">
    <div class="top_nav">
        <@liferay_portlet["runtime"]
        portletName="TopNavigation"
        />
    </div>
    <div class="content_container">

        <div class="nav_list">
            <@liferay_portlet["runtime"]
            portletName="Navigation"
            />
            <#--
            <#include "${full_templates_path}/vertical_navigation.ftl" />
            -->
        </div>
        <div class="main_content content_info table_form_content">
            <#if selectable>
                <@liferay_util["include"] page=content_include />
            <#else>
                ${portletDisplay.recycle()}

                ${portletDisplay.setTitle(the_title)}
                <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                    <@liferay_util["include"] page=content_include />
                </@>
            </#if>
        </div>
    </div>
</div>

<div class="modal fade" id="hg_confirm" tabindex="-1" role="dialog" aria-labelledby="confirmLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="confirmLabel"></h4>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn_main">确定</button>
            </div>
        </div>
    </div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script>
    //组织生活左侧导航选中逻辑
    $(function(){
        layui.use('element', function(){
            var element = layui.element;
            // element.on('nav(menuTree)', function(data){
            //     console.log(data);
            // });
        });

        // //获取右侧title值
        // var $target = $("div.content_title");
        // var _text ="";
        // if($target.children("a").length > 0){
        //     _text = $target.children("a").eq(0).text().replace(/(^\s*)|(\s*$)/g, "");
        //     console.log(_text)
        // }else{
        //     _text = $target.text().replace(/(^\s*)|(\s*$)/g, "");
        //     console.log(_text)
        // };

        //遍历左侧导航text
        var path = window.location.pathname;
        var selectedAlready = false;
        $(".menu_tree a").each(function(){
            if($(this).attr("_href") === path.substr(path.lastIndexOf("/")) && !selectedAlready){
                $(this).parent().addClass("layui-this");
                $(this).parent().parent().parent().addClass("layui-nav-itemed");
                selectedAlready = true;
            }
        })

    })
</script>

</body>

</html>