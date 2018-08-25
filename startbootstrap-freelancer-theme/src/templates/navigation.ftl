<nav class="${nav_css_class}" id="navigation" role="navigation">
    <h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
    <div class="container">
        <#if show_site_name>
            <a class="navbar-brand" href="${site_default_url}"
               title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                ${site_name}
            </a>
        </#if>
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
                type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>
        <#if !is_signed_in>
			<a class="btn btn-light ml-5"
               data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}"
               id="sign-in" rel="nofollow">${sign_in_text}</a>
        <#else>
            <div class="user-personal-bar ml-5">
                <@liferay.user_personal_bar />
            </div>
        </#if>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto"
                aria-label="<@liferay.language key="site-pages" />" role="menubar">
                <#list nav_items as nav_item>
                    <#assign
                    nav_item_attr_has_popup = ""
                    nav_item_attr_selected = ""
                    nav_item_css_class = "nav-item mx-0 mx-lg-1"
                    nav_link_css_class = "nav-link py-3 px-0 px-lg-3 rounded"
                    nav_item_layout = nav_item.getLayout()
                    />

                    <#if nav_item.isSelected()>
                        <#assign
                        nav_item_attr_has_popup = "aria-haspopup='true'"
                        nav_item_attr_selected = "aria-selected='true'"
                        nav_item_css_class = "nav-item mx-0 mx-lg-1"
                        nav_link_css_class = "nav-link py-3 px-0 px-lg-3 rounded active"
                        />
                    </#if>

                    <li ${nav_item_attr_selected} class="${nav_item_css_class}"
                                                  id="layout_${nav_item.getLayoutId()}"
                                                  role="presentation">
                        <a class="${nav_link_css_class}"
                           aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup}
                           href="${nav_item.getURL()}" ${nav_item.getTarget()}
                           role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>
                    </li>
                </#list>
            </ul>
        </div>
    </div>
</nav>