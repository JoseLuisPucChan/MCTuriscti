﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCTuristic_Centro_Historico.GUI
{
    public partial class Maps : System.Web.UI.Page
    {
        double Latitud;
        double Longitud;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                Latitud = Convert.ToDouble(Session["Latitud"]);
                Longitud = Convert.ToDouble(Session["Longitud"]);
                if (Latitud != 0 && Longitud != 0)
                {
                    txtLong.Text = Convert.ToString(Longitud);
                    TextLat.Text = Convert.ToString(Latitud);
                }
                else
                {
                    TextLat.Text = "20.966890931424636";
                    txtLong.Text = "-89.62354648315431";
                }

            }
        }

        protected void TextLat_TextChanged(object sender, EventArgs e)
        {
        
        }

        protected void btnMaps_Click(object sender, EventArgs e)
        {
            if (txtLong.Text != string.Empty && TextLat.Text != string.Empty)
            {
                Session["Latitud"] = TextLat.Text;
                Session["Longitud"] = txtLong.Text;
                Response.Redirect("GestionEstablecimientos.aspx");
                txtLong.Text = String.Empty;
                TextLat.Text = String.Empty;
            }
          
        }
    }
}