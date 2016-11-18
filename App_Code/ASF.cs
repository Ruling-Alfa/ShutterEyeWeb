using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AForge.Imaging.Filters;
using System.Drawing;
using AForge.Imaging.Textures;
using System.Drawing.Imaging;
using System.IO;

/// <summary>
/// Summary description for ASF
/// </summary>
public class ASF
{
    public static string MarbleFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        // 1 - Marble effect
        // create texture
        ITextureGenerator generator = new MarbleTexture();
        float[,] texture = generator.Generate(image.Width, image.Height);
        // create filter
        IFilter filter1 = new Texturer(texture);
        // apply filter
        Bitmap newImage1 = filter1.Apply(image);


        string storeFilePath = getFilteredImagePath(filePath);
        newImage1.Save(storeFilePath);

        return storeFilePath;
    }

    public static string WoodFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        // 2 - Wood effect
        // create filter
        IFilter filter2 = new Texturer(new WoodTexture());
        // apply filter
        Bitmap newImage2 = filter2.Apply(image);


        string storeFilePath = getFilteredImagePath(filePath);
        newImage2.Save(storeFilePath);

        return storeFilePath;
    }
    
    public static string TextileFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        /// 3 - Textile effect
        // create filter
        IFilter filter3 = new Texturer(new TextileTexture());
        // apply filter
        Bitmap newImage3 = filter3.Apply(image);

        string storeFilePath = getFilteredImagePath(filePath);
        newImage3.Save(storeFilePath);
        
        return storeFilePath;
    }

    private static string getFilteredImagePath(String filePath)
    {
        string parentPath = Directory.GetParent(filePath).FullName;
        string fileNameWithoutExt = Path.GetFileNameWithoutExtension(filePath);
        string ext = Path.GetExtension(filePath);
        string storeFilePath = parentPath + "\\" + fileNameWithoutExt + "_filter" + ext;
        int count = 0;
        while (File.Exists(storeFilePath))
        {
            storeFilePath = parentPath + "\\" + fileNameWithoutExt + "_filter(" + count + ")" + ext;
            count++;
        }
        return storeFilePath;
    }

    public static string RustyFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        // 4 - Rusty effect
        IFilter filter4 = new TexturedFilter(new CloudsTexture(),
            new Sepia(), new GrayscaleBT709());
        // apply filter
        Bitmap newImage4 = filter4.Apply(image);

        string storeFilePath = getFilteredImagePath(filePath);
        newImage4.Save(storeFilePath);

        return storeFilePath;
    }
}