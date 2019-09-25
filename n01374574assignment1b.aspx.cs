using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01374573_assignment1a
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                
                Page.Validate();

                
                if (Page.IsValid)
                {



                    
                    string Customer_Fname = customer_fname.Text.ToString();
                    string Customer_Lname = customer_lname.Text.ToString();
                    string Customer_Email = customer_email.Text.ToString();
                    string Incident_Location = incident_location.SelectedValue.ToString();
                    string Incident_Notification = incident_notification.SelectedValue.ToString();
                    int Incident_Itemsstolen = Convert.ToInt32(incident_itemsstolen.Text);

                    //Summary of the report
                    summary_incidentreport.InnerHtml = "Thank you for filling out the incident report! We will get back to you shortly... <br>";
                    

                    summary_incidentreport.InnerHtml += " First Name: " + Customer_Fname + "<br>";
                    summary_incidentreport.InnerHtml += " Last Name: " + Customer_Lname + "<br>";
                    summary_incidentreport.InnerHtml += " Incident Location: " + Incident_Location + "<br>";
                    summary_incidentreport.InnerHtml += "Customer Email:" + Customer_Email + "<br>";
                    summary_incidentreport.InnerHtml += " Incident Notification: " + Incident_Notification + "<br>";
                    summary_incidentreport.InnerHtml += " Incident Items Stolen: " + Incident_Itemsstolen + "<br>";

                    
                    if (Incident_Notification == "Employee")
                    {
                        summary_incidentreport.InnerHtml += "You have already notified to " + Incident_Notification.ToString() ;
                    }
                    if (Incident_Notification == "Police")
                    {
                        summary_incidentreport.InnerHtml += "You have already notified to " + Incident_Notification.ToString() ;
                    }
                    if (Incident_Notification == "Other")
                    {
                        summary_incidentreport.InnerHtml += "You have not notified to any one...please do notify"  ;
                    }
                }
                
            }
        }
    }
}