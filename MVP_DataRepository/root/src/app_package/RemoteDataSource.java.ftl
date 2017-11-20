package ${packageName}.source.remote;

import android.support.annotation.NonNull;

import ${packageName}.${dataClassName};
import ${packageName}.source.${dataClassName}sDataSource;

public class ${dataClassName}sRemoteDataSource implements ${dataClassName}sDataSource {
    private static ${dataClassName}sRemoteDataSource sUniqueInstance;

    private ${dataClassName}sDao mDao;
    private AppExecutors mAppExecutors;

    private ${dataClassName}sRemoteDataSource(){
    }

    public synchronized static ${dataClassName}sRemoteDataSource getInstance() {
        if (sUniqueInstance == null) {
            sUniqueInstance = new ${dataClassName}sRemoteDataSource();
        }

        return sUniqueInstance;
    }

}
