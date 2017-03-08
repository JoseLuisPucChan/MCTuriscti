package com.example.luispuc.mcturisticrutasturiricas;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.VideoView;
//Extender a Activity ayudara a eliminar el DarkActionBar para eliminar la barra superior
public class Inicio extends Activity {
    Button btn;
    VideoView video1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        //Se encarga de expandir la pantalla para adaptar la actividad
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);


        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_inicio);


        video1 = (VideoView) findViewById(R.id.videoView);
        video1.requestFocus();
        String dir = "android.resource://" +  getPackageName() +"/" + R.raw.cara_animada;
        video1.setVideoURI(Uri.parse(dir));
        video1.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                if (isFinishing())
                    return;
                startActivity(new Intent(Inicio.this, MainActivity.class));
                finish();
            }
        });
        video1.start();





    }
}
