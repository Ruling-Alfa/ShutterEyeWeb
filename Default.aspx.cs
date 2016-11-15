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
                Guid g = Guid.NewGuid();
                FileName = Server.MapPath("~/")+"uploadImages\\" + g.ToString() + ext;
                while (File.Exists(FileName)) {
                    g = Guid.NewGuid();
                    FileName = Server.MapPath("~/") + g.ToString() + ext;
                }
                FileUploadControl.SaveAs(FileName);
                
                StatusLabel.Text = "Upload status: File uploaded!\n"+FileName;
                         
                Context.Items["path"] = FileName;
                Server.Transfer("page2.aspx");
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }

        }
    }
}