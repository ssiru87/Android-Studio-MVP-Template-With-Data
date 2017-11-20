package ${packageName}.source;

import android.support.annotation.NonNull;

import static com.google.common.base.Preconditions.checkNotNull;


public class ${dataClassName}sRepository implements ${dataClassName}sDataSource {
    private static ${dataClassName}sRepository sUniqueInstance = null;

    private final ${dataClassName}sDataSource mLocalDataSource;
    private final ${dataClassName}sDataSource mRemoteDataSource;

    private ${dataClassName}sRepository(@NonNull ${dataClassName}sDataSource remoteDataSource,
                                        @NonNull ${dataClassName}sDataSource localDataSource) {
        mRemoteDataSource = checkNotNull(remoteDataSource);
        mLocalDataSource = checkNotNull(localDataSource);
    }

    public synchronized static ${dataClassName}sRepository getInstance(${dataClassName}sDataSource remoteDataSource,
                                                                       ${dataClassName}sDataSource localDataSource) {
        if (sUniqueInstance == null) {
            sUniqueInstance = new ${dataClassName}sRepository(remoteDataSource, localDataSource);
        }

        return sUniqueInstance;
    }

}
