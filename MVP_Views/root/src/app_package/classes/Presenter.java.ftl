package ${packageName};

import android.support.annotation.NonNull;


public class ${className}Presenter implements ${className}Contract.Presenter {
    
    // TODO add repository
    private final DataRepository mRepository;
    private final ${className}Contract.View mView;

    // TODO add repository
    public ${className}Presenter(@NonNull DataRepository repository,
                                 @NonNull ${className}Contract.View view) {
        mRepository = repository;
        mView = view;

        mView.setPresenter(this);
    }
}

