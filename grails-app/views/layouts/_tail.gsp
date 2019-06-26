<!-- Footer -->
<hf:footer logoutUrl="${g.createLink(controller: "logout", action: "logout", absolute: true)}"
           ignoreCookie="${grailsApplication.config.ignoreCookie}"/>
<!-- End footer -->

<!-- JS resources-->
<plugin:isNotAvailable name="resources">
    <asset:javascript src="${pageProperty(name:'meta.deferred-js') ?: "${assetPrefix}.js"}" />
    <asset:deferredScripts />
</plugin:isNotAvailable>
<plugin:isAvailable name="resources">
    <r:layoutResources disposition="defer"/>
</plugin:isAvailable>