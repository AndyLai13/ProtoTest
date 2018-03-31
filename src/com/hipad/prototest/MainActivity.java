package com.hipad.prototest;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.android.prototest.test.nano.ProtoTest.Action;

public class MainActivity extends Activity {
   
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        Log.d("Andy", "Action.Type.TOUCH = " + Action.Type.TOUCH);
        
    }
}
