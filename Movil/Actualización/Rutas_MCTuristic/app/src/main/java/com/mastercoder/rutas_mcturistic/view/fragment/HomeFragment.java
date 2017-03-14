package com.mastercoder.rutas_mcturistic.view.fragment;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.mastercoder.rutas_mcturistic.R;
import com.mastercoder.rutas_mcturistic.adapter.PictureAdapterRecyclerView;
import com.mastercoder.rutas_mcturistic.model.Picture;

import java.util.ArrayList;

/**
 * A simple {@link Fragment} subclass.
 */
public class HomeFragment extends Fragment {


    public HomeFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_home, container, false);
        showToolbar(getResources().getString(R.string.tab_home), false, view);
        RecyclerView picturesRecycler = (RecyclerView) view.findViewById(R.id.pictureRecycler);

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);

        picturesRecycler.setLayoutManager(linearLayoutManager);

        PictureAdapterRecyclerView pictureAdapterRecyclerView =
                new PictureAdapterRecyclerView(buidPictures(), R.layout.cardview_picture, getActivity());
        picturesRecycler.setAdapter(pictureAdapterRecyclerView);



        return view;
    }



    public ArrayList<Picture> buidPictures(){
        ArrayList<Picture> pictures = new ArrayList<>();
        // pictures.add(new Picture("http://www.novalandtours.com/images/guide/guilin.jpg", "Uriel Ramírez", "4 días", "3 Me Gusta"))byte[] picture=
        pictures.add(new Picture("http://www.en-yucatan.com.mx/fotos/merida/palacio-municipal-merida-yucatan.jpg", "Palacio de Gobierno", "34224 Me gusta", "3445 visitas"));
        pictures.add(new Picture("http://static.panoramio.com/photos/original/46427992.jpg", "Santa Lucia", "675345 Me gusta", "56R43534 Visitas"));
        pictures.add(new Picture("https://lh4.googleusercontent.com/-Bxx4-UxMm_Q/Tk7FBC4RjHI/AAAAAAAAAUA/KbFLFEOB6PA/s800/promesa_04.jpg", "Pasaje Emilio Seijo", "43423 Me gusta", "334 visitas"));
        return pictures;
    }




    public void showToolbar(String tittle, boolean upButton, View view){
        Toolbar toolbar = (Toolbar) view.findViewById(R.id.toolbar);
        ((AppCompatActivity) getActivity()).setSupportActionBar(toolbar);
        ((AppCompatActivity) getActivity()).getSupportActionBar().setTitle(tittle);
        ((AppCompatActivity) getActivity()).getSupportActionBar().setDisplayHomeAsUpEnabled(upButton);


    }

}




