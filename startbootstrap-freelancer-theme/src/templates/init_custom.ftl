<#assign nav_css_class="navbar navbar-expand-lg bg-secondary text-uppercase affix">

<#if theme_settings["wrap-content"]??>
    <#assign wrap_content = getterUtil.getBoolean(theme_settings["wrap-content"]!"", true) />
<#else>
    <#assign wrap_content = true />
</#if>