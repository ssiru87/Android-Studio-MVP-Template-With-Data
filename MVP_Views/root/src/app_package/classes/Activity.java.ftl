package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;


public class ${className}Activity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName}_activity);

        ${className}Fragment ${classToResource(className)}Fragment = (${className}Fragment) getSupportFragmentManager()
                                                                            .findFragmentById(R.id.${layoutName}_content_frame);

        if (${classToResource(className)}Fragment == null) {
            ${classToResource(className)}Fragment = ${className}Fragment.newInstance();
            ActivityUtils.addFragmentToActivity(getSupportFragmentManager(), ${classToResource(className)}Fragment, R.id.${layoutName}_content_frame);
        }

        // TODO add data repository
        Database database = Database.getInstance(getApplicationContext());
        DataRepository repository = DataRepository.getInstance(DataRemoteDataSource.getInstance(),
                                                               DataLocalDataSource.getInstance(new AppExecutors(), database.dataDao()));

        new ${className}Presenter(repository, ${classToResource(className)}Fragment);
    }
}
