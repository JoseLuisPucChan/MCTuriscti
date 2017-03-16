package com.mastercoder.rutas_mcturistic;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.VideoView;

public class LoginActivity extends Activity {
    Button btn;
    VideoView video1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        //Se encarga de expandir la pantalla para adaptar la actividad
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        video1 = (VideoView) findViewById(R.id.videoView);
        video1.requestFocus();
        String dir = "android.resource://" +  getPackageName() +"/" + R.raw.cara_animada;
        video1.setVideoURI(Uri.parse(dir));
        video1.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                if (isFinishing())
                    return;
                startActivity(new Intent(LoginActivity.this,Login.class));
                finish();
            }
        });
        video1.start();



    }
}
