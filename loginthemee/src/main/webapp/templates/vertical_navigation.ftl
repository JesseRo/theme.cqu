<nav class="${nav_css_class}" id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
	
	<ul class="mobile_list">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
				y=["待办事项","评价/上传","新闻中心"]   
				x=["发布通知","活动抽查","会议统计","待办预警"]
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected"
				/>
			</#if>
			
			
						
			<#if "yes"==(x?seq_contains(nav_item.getName())?string("yes", "no"))>
				<li class="second_menu"> 
		            <#if nav_item.hasChildren()>
		            	<p>${nav_item.getName()}</p>
						<ul>
							<#list nav_item.getChildren() as nav_child>
								<#assign
									nav_child_attr_selected = ""
									nav_child_css_class = ""
								/>
								<#if nav_item.isSelected()>
									<#assign
										nav_child_attr_selected = "aria-selected='true'"
										nav_child_css_class = "selected"
									/>
								</#if>
								<li class="col-xs-4">
									<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					<#else>
						<a href="${nav_item.getURL()}">
	                        <span>${nav_item.getName()}</span>
	                    </a>
					</#if>
				</li>
			</#if>
		</#list>
	</ul>
<#--
	<script type="text/javascript">
		$(".first_menu").click(function() {
		console.log("hdjhasdh")
		    $(this).parents("li").toggleClass("height_auto");
		})
		$(".second_menu li").click(function() {
		    $(".second_menu li").removeClass("second_menu_on");
		    $(this).addClass("second_menu_on");
		    $(this).parents("li").addClass("height_auto");
		})
		$(".table_info tr td").eq(0).find("img").click(function() {
			
		})
	</script>
-->
</nav>