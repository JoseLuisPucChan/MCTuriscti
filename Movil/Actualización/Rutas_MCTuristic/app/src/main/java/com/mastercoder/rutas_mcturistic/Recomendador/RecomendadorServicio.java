package com.mastercoder.rutas_mcturistic.Recomendador;

import android.content.Context;
import android.speech.tts.TextToSpeech;

import com.mastercoder.rutas_mcturistic.TextToSpeech.ReproducirTextoServicio;

import java.util.Date;

/**
 * Created by Andre on 09/03/2017.
 */

public class RecomendadorServicio {

    private boolean statusManana = false;
    private boolean statusTarde = false;
    private boolean statusNoche = false;
    private Context context;
    ReproducirTextoServicio servicio;

    public void iniciarServiciosRecomendador(Context c, ReproducirTextoServicio rts){
        context = c;
        servicio = rts;
        comidaManana();
        comidaTarde();
        comidaNoche();
        reiniciarValores();
    }

    public void setTextToSpeech(TextToSpeech ts){}

    private void comidaManana(){
        String Texto = "¿Ya desayunaste?";
        Date fecha = new Date();
        if (statusManana == false){
            if (fecha.getHours() == 9 || fecha.getHours() == 10){

                servicio.reproducirTextoServicio(fecha.getHours(),fecha.getMinutes(), fecha.getSeconds(), Texto, context);
                statusManana = true;
            }
        }
    }

    private void comidaTarde(){
        String Texto = "¿Ya almorzaste?";
        Date fecha = new Date();
        if (statusTarde == false){
            if (fecha.getHours() == 13 || fecha.getHours() == 14 || fecha.getHours() == 15){
                servicio.reproducirTextoServicio(fecha.getHours(),fecha.getMinutes(), fecha.getSeconds(), Texto, context);
                statusTarde = true;
            }
        }
    }

    private void comidaNoche(){
        String Texto = "¿Ya cenaste?";
        Date fecha = new Date();
        long hora = fecha.getHours();
        if (statusNoche == false){
            if (fecha.getHours() == 18 || fecha.getHours() == 19 || fecha.getHours() == 20 || fecha.getHours() == 3){
                servicio.reproducirTextoServicio(fecha.getHours(),fecha.getMinutes(), fecha.getSeconds(), Texto, context);
                statusNoche = true;
            }
        }
    }

    private void reiniciarValores(){
        Date fecha = new Date();
        if (fecha.getHours() == 0) {
            statusManana = false;
            statusTarde = false;
            statusNoche = false;
        }
    }


}
