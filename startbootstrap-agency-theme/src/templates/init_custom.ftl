<#assign nav_css_class="navbar navbar-expand-lg navbar-dark affix">

<#if theme_settings["wrap-content"]??>
    <#assign wrap_content = getterUtil.getBoolean(theme_settings["wrap-content"]!"", true) />
<#else>
    <#assign wrap_content = true />
</#if>