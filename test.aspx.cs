using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Drawing;

public partial class test : System.Web.UI.Page
{
    public Size OriginalImageSize { get; set; }        //Store original image size.
    public Size NewImageSize { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
        {
            Guid uid = Guid.NewGuid();
            string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
            string SaveLocation = Server.MapPath("LogoImages") + "" + uid + fn;
            try
            {
                string fileExtention = File1.PostedFile.ContentType;
                int fileLenght = File1.PostedFile.ContentLength;
                if (fileExtention == "image/png" || fileExtention == "image/jpeg" || fileExtention == "image/x-png")
                {
                    if (fileLenght <= 1048576)
                    {
                        System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(File1.PostedFile.InputStream);
                        System.Drawing.Image objImage = ScaleImage(bmpPostedImage, 81);
                        // Saving image in jpeg format
                        objImage.Save(SaveLocation, ImageFormat.Jpeg);
                        lblmsg.Text = "The file has been uploaded.";
                        lblmsg.Style.Add("Color", "Green");
                    }
                    else
                    {
                        lblmsg.Text = "Image size cannot be more then 1 MB.";
                        lblmsg.Style.Add("Color", "Red");
                    }
                }
                else
                {
                    lblmsg.Text = "Invaild Format!";
                    lblmsg.Style.Add("Color", "Red");
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error: " + ex.Message;
                lblmsg.Style.Add("Color", "Red");
            }
        }

    }
    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxHeight)
    {
        var ratio = (double)maxHeight / image.Height;
        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
}