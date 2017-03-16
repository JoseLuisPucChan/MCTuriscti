package com.mastercoder.rutas_mcturistic.TextToSpeech;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.speech.tts.TextToSpeech;
import android.widget.Toast;

/**
 * Created by Andre on 07/03/2017.
 */

public class ReproducirTexto {

    private TextToSpeech mTts; // Declaración de una variable TextToSpeech

    // Método para reproducir el texto deseado
    public void reproducirTexto(String Texto, TextToSpeech tts) {
        mTts = tts; // Asignación del valor del TextToSpeech
        mTts.speak(Texto, TextToSpeech.QUEUE_FLUSH, null); // Reproducción del texto
    }

    public void mostrarDialogo(String texto, final Context context){
        AlertDialog.Builder mensaje = new AlertDialog.Builder(context);
        mensaje.setTitle("Pregunta");
        mensaje.setMessage(texto);
        mensaje.setPositiveButton("Sí", new DialogInterface.OnClickListener(){
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(context, "Ok",Toast.LENGTH_LONG).show();
            }
        });
        mensaje.setNegativeButton("No", new DialogInterface.OnClickListener(){
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(context, "No",Toast.LENGTH_LONG).show();
            }
        });
        mensaje.show();

    }

}
