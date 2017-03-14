package com.mastercoder.rutas_mcturistic.Notificaciones;


import android.util.Log;

import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

/**
 * Created by Andre on 07/03/2017.
 */

public class ServicioNotificacionesID extends FirebaseInstanceIdService {
    private static final String TAG = "NOTICIAS";

    // Método para regrescar el Token del servicio de notificaciones
    @Override
    public void onTokenRefresh() {
        super.onTokenRefresh();

        String token = FirebaseInstanceId.getInstance().getToken();
        Log.d(TAG, "Token: " + token);

    }
}
