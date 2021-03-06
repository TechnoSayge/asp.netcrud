﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.netcrud
{
    public partial class Contact : System.Web.UI.Page
    {
        //SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\sqle2012;Initial Catalog=ASPCRUD;Integrated Security=true");
        SqlConnection sqlCon = new SqlConnection(@"Data Source=;Initial Catalog=Yolanda;Integrated Security=SSPI");
        //CLUSTERD1\DEVSQLC1
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            btnDelete.Enabled = false;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            hfContactID.Value = "";
            txtName.Text = txtMobile.Text = txtAddress.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ContactID", (hfContactID.Value==""?0:Convert.ToInt32(hfContactID.Value)));
            sqlCmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@mobile", txtMobile.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@address", txtAddress.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            if (hfContactID.Value == "")
                lblSuccessMessage.Text = "Saved Succesfully!!";
            else
                lblSuccessMessage.Text = "Updated Successfully!";
        }
    }
}