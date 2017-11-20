<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Object.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${dataClassName}.java" />

    <instantiate from="src/app_package/DataSource.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/source/${dataClassName}sDataSource.java" />

    <instantiate from="src/app_package/Repository.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/source/${dataClassName}sRepository.java" />

    <instantiate from="src/app_package/LocalDao.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/source/local/${dataClassName}sDao.java" />

    <instantiate from="src/app_package/LocalDataSource.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/source/local/${dataClassName}sLocalDataSource.java" />

    <instantiate from="src/app_package/RemoteDataSource.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/source/remote/${dataClassName}sRemoteDataSource.java" />

    <open file="${srcOut}/${dataClassName}.java"/>
</recipe>
