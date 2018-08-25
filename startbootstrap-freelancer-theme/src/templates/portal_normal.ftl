<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />"
      lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
          rel="stylesheet" type="text/css">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#if wrap_content>
    <#assign wrapper_css_class ="container">
<#else>
    <#assign wrapper_css_class ="container-fluid">
</#if>

<div class="${wrapper_css_class}" id="wrapper">
    <header id="banner" role="banner">
		<#if has_navigation && is_setup_complete>
            <#include "${full_templates_path}/navigation.ftl" />
        </#if>
    </header>

    <section id="content">
        <h1 class="hide-accessible">${the_title}</h1>

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

</div>

<#include "${full_templates_path}/footer.ftl" />

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>