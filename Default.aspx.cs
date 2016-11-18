using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Runtime.Serialization;


public partial class _Default : System.Web.UI.Page
{
    string FileName;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Bitmap bmp =ASF.metgh();

        //drawOnScreen(bmp);
    }
    
    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUploadControl.FileName);
                string ext = Path.GetExtension(filename);
                if (!(ext == ".jpg" || ext == ".png" || ext == ".gif" || ext == ".jpeg"))
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please choose only .jpg, .png and .gif image types!')", true);
                    return;
                }
                if (FileUploadControl.PostedFile.ContentLength > (10240*100))
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                    return;
                }
                
                Guid g = Guid.NewGuid();
                FileName = Server.MapPath("~/")+"uploadImages\\" + g.ToString() + ext;
                while (File.Exists(FileName)) {
                    g = Guid.NewGuid();
                    FileName = Server.MapPath("~/") + g.ToString() + ext;
                }
                FileUploadControl.SaveAs(FileName);
                
                StatusLabel.Text = "Upload status: File uploaded!\n"+FileName;
                         
                Session["path"] = FileName;
                Response.Redirect("page2.aspx",true);
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }

        }
    }
}