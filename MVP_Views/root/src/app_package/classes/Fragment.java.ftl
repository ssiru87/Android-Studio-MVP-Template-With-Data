package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


public class ${className}Fragment extends Fragment implements ${className}Contract.View {

    private ${className}Contract.Presenter mPresenter;

    public ${className}Fragment() {

    }

    public static ${className}Fragment newInstance() {
        return new ${className}Fragment();
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${layoutName}_fragment, container, false);

        // TODO
        return view;
    }

    @Override
    public void setPresenter(${className}Contract.Presenter presenter) {
        mPresenter = presenter;
    }
}
