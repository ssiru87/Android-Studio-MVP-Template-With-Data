package ${packageName}.source.local;

import android.support.annotation.NonNull;
import ${packageName}.${dataClassName};
import ${packageName}.source.${dataClassName}sDataSource;


public class ${dataClassName}sLocalDataSource implements ${dataClassName}sDataSource {
    private static ${dataClassName}sLocalDataSource sUniqueInstance;

    private ${dataClassName}sDao mDao;
    private AppExecutors mAppExecutors;

    public ${dataClassName}sLocalDataSource(@NonNull AppExecutors appExecutors,
                                            @NonNull ${dataClassName}sDao dao) {
        mAppExecutors = appExecutors;
        mDao = dao;
    }

    public static synchronized ${dataClassName}sLocalDataSource getInstance(@NonNull AppExecutors appExecutors, @NonNull ${dataClassName}sDao dao) {
        if (sUniqueInstance == null) {
            sUniqueInstance = new ${dataClassName}sLocalDataSource(appExecutors, dao);
        }

        return sUniqueInstance;
    }
}
