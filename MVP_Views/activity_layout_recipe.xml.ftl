<recipe>
    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}_activity.xml" />
    <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}_fragment.xml" />
</recipe>
