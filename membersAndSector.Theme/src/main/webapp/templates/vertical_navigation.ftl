<nav class="${nav_css_class}" id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
	
	<ul class="party_organization_list overflow_hidden">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
				y=["待办事项","新闻中心","发布新闻"]   
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
					<#switch nav_item.getName()> 
					<#case "发布通知">
						<li class=""> 
							<div class="first_menu">
				                <img class="front_icon" src="/images/backlog_icon.png" />
				                <span>${nav_item.getName()}</span>
				                <img class="right first_drop dropdown_up" src="/images/second_menu_up.png" />
				            </div>
				            <#if nav_item.hasChildren()>
								<ul class="second_menu">
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
										<li>
											<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
										</li>
									</#list>
								</ul>
							</#if>
						</li>
					<#break> 
					<#case "活动抽查">
						<li> 
							<div class="first_menu">
			                    <img class="front_icon" src="/images/activity_icon.png" />
			                    <span>${nav_item.getName()}</span>
			                    <img class="right first_drop dropdown_up" src="/images/second_menu_up.png" />
			                </div>
			                <#if nav_item.hasChildren()>
								<ul class="second_menu">
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
										<li>
											<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
										</li>
									</#list>
								</ul>
							</#if>
						</li>
					<#break> 
					<#case "会议统计">
						<li> 
							<div class="first_menu">
			                    <img class="front_icon" src="/images/meeting_summy.png" />
			                    <span>${nav_item.getName()}</span>
			                    <img class="right first_drop dropdown_up" src="/images/second_menu_up.png" />
			                </div>
			                <#if nav_item.hasChildren()>
								<ul class="second_menu">
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
										<li>
											<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
										</li>
									</#list>
								</ul>
							</#if>
						</li>
					<#break>
					<#case "待办预警"> 
						<li>
							<a href="${nav_item.getURL()}" style="text-decoration: none;">
			                    <img class="front_icon" src="/images/backlog_icon.png" /> <span>${nav_item.getName()}</span>
			                </a>
			        	</li>
					<#break>
					<#default> 
					</#switch>
					
				</li>
			<#elseif "yes"==(y?seq_contains(nav_item.getName())?string("yes", "no"))>
				<#switch nav_item.getName()> 
				<#case "待办事项"> 
					 <li>
                        <a href="${nav_item.getURL()}">
                            <img class="front_icon" src="/images/backlog_icon.png" /> <span>${nav_item.getName()}</span>
                        </a>
                    </li>
				<#break> 
				<#case "新闻中心"> 
					 <li>
                        <a href="${nav_item.getURL()}">
                            <img class="front_icon" src="/images/news_center.png" /> <span>${nav_item.getName()}</span>
                        </a>
                    </li>
				<#break>
				<#case "发布新闻"> 
					 <li>
                        <a href="${nav_item.getURL()}">
                            <img class="front_icon" src="/images/news_center.png" /> <span>${nav_item.getName()}</span>
                        </a>
                    </li>
				<#break>
				<#default> 
				</#switch>
			</#if>
		</#list>
	</ul>
	<script type="text/javascript">
		//一级菜单下拉
        $(".first_menu").click(function() {
            $(this).parents("li").toggleClass("height_auto");
            var _target = $(this).find(".first_drop");
            if (_target.hasClass("dropdown_up")) {
                _target.removeClass("dropdown_up").addClass("dropdown_down");
                _target.attr("src", "../images/dropdown_icon.png");
            } else {
                _target.removeClass("dropdown_down").addClass("dropdown_up");
                _target.attr("src", "../images/second_menu_up.png");
            }
        })
	
		$(".second_menu li").click(function() {
		    $(".second_menu li").removeClass("second_menu_on");
		    $(this).addClass("second_menu_on");
		    $(this).parents("li").addClass("height_auto");
		})
		$(".table_info tr td").eq(0).find("img").click(function() {
			
		})
	</script>
</nav>