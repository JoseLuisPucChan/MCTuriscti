package com.mastercoder.rutas_mcturistic;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.mastercoder.rutas_mcturistic.view.MainActivity;

public class Login extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login_container);

    }public  void goHombre(View view)
    {
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);

    }
}
