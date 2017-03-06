package com.example.diosemirnah.prueba;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.http.SslCertificate;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.VideoView;

public class MainActivity extends AppCompatActivity {

    Button btn;
    VideoView video1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //video1 = new VideoView(this);
        //setContentView(video1);
        video1 = (VideoView) findViewById(R.id.videoView);
        video1.requestFocus();
        String dir = "android.resource://com.example.diosemirnah.prueba/" + R.raw.video;
        video1.setVideoURI(Uri.parse(dir));
        video1.start();


        video1.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                if (isFinishing())
                    return;
                video1.start();
                cambiar();
                startActivity(new Intent(MainActivity.this, PruebaDos.class));
                finish();
            }
        });
    }
    //Metodo para tomar 2 segundo y medio para reproducir el segundo video
    //se agrego en el setOnCompletionListener
    public void cambiar()
    {
        long tiempo= System.currentTimeMillis()+2500;
        while(System.currentTimeMillis()<tiempo)
        {
            synchronized (this){
                try{
                    wait(tiempo-System.currentTimeMillis());
                }
                catch (Exception e){}
            }
        }
    }


}

