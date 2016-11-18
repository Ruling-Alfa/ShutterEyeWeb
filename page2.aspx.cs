using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Net;
using System.IO;

public partial class page2 : System.Web.UI.Page
{
    static String filePath;
    protected void Page_Load(object sender, EventArgs e)
    
    {
        if (!IsPostBack)
        {
            filePath = Session["path"].ToString();
            if (filePath == null)
            {
                throw new Exception("File Does Not Exists!!!!");
            }
        }
        Response.Write(filePath);
    }

    private void drawOnScreen(Bitmap bmp)
    {
        Graphics g = Graphics.FromImage(bmp);
        g.DrawRectangle(new Pen(Color.Red), 1, 1, bmp.Width, bmp.Height);
        g.Flush();
        Response.ContentType = "image/jpeg";
        bmp.Save(Response.OutputStream, ImageFormat.Jpeg);

        g.Dispose();
        bmp.Dispose();

    }

    protected void applyRustyFilter(object sender, EventArgs e)
    {
        Button button = sender as Button;
        if (button != null && filePath!=null)
        {
            String filteredImgPath = ASF.RustyFilter(filePath);
            string parentPath = Directory.GetParent(filteredImgPath).FullName;
            string fileNameWithoutExt = Path.GetFileNameWithoutExtension(filteredImgPath);
            string ext = Path.GetExtension(filteredImgPath);
            string storeFilePath = "uploadImages" + "\\" + fileNameWithoutExt + ext;

            imageFilteredImg.ImageUrl = storeFilePath;
        }

    }
    protected void applyTextileFilter(object sender, EventArgs e)
    {
        Button button = sender as Button;
        if (button != null && filePath != null)
        {
            String filteredImgPath = ASF.TextileFilter(filePath);

            string parentPath = Directory.GetParent(filteredImgPath).FullName;
            string fileNameWithoutExt = Path.GetFileNameWithoutExtension(filteredImgPath);
            string ext = Path.GetExtension(filteredImgPath);
            string storeFilePath = "uploadImages" + "\\" + fileNameWithoutExt + ext;

            imageFilteredImg.ImageUrl = storeFilePath;
        }

    }
    protected void applyWoodFilter(object sender, EventArgs e)
    {
        Button button = sender as Button;
        if (button != null && filePath != null)
        {
            String filteredImgPath = ASF.WoodFilter(filePath);
            string parentPath = Directory.GetParent(filteredImgPath).FullName;
            string fileNameWithoutExt = Path.GetFileNameWithoutExtension(filteredImgPath);
            string ext = Path.GetExtension(filteredImgPath);
            string storeFilePath = "uploadImages" + "\\" + fileNameWithoutExt + ext;

            imageFilteredImg.ImageUrl = storeFilePath;
        }

    }
    protected void applyMarbleFilter(object sender, EventArgs e)
    {
        Button button = sender as Button;
        if (button != null && filePath!=null)
        {
            String filteredImgPath = ASF.MarbleFilter(filePath);
            string parentPath = Directory.GetParent(filteredImgPath).FullName;
            string fileNameWithoutExt = Path.GetFileNameWithoutExtension(filteredImgPath);
            string ext = Path.GetExtension(filteredImgPath);
            string storeFilePath = "uploadImages" + "\\" + fileNameWithoutExt + ext;

            imageFilteredImg.ImageUrl = storeFilePath;
        }

    }
    protected void applyRustyFilterBtn_Click(object sender, EventArgs e)
    {
        applyRustyFilter(sender, e);
    }
    protected void applyTextileFilterBtn_Click(object sender, EventArgs e)
    {
        applyTextileFilter(sender, e);
      }
    protected void applyWoodFilterBtn_Click(object sender, EventArgs e)
    {
        applyWoodFilter(sender, e);
    }
    protected void applyMarbleFilterBtn_Click(object sender, EventArgs e)
    {
        applyMarbleFilter(sender, e);
    }
    
}