using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AForge.Imaging.Filters;
using System.Drawing;
using AForge.Imaging.Textures;
using System.Drawing.Imaging;

/// <summary>
/// Summary description for ASF
/// </summary>
public class ASF
{
    public static Bitmap MarbleFilter(String filePath)
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
       

        return newImage1;
    }

    public static Bitmap WoodFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        // 2 - Wood effect
        // create filter
        IFilter filter2 = new Texturer(new WoodTexture());
        // apply filter
        Bitmap newImage2 = filter2.Apply(image);


        return newImage2;
    }
    
    public static Bitmap TextileFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        /// 3 - Textile effect
        // create filter
        IFilter filter3 = new Texturer(new TextileTexture());
        // apply filter
        Bitmap newImage3 = filter3.Apply(image);

        return newImage3;
    }

    public static Bitmap RustyFilter(String filePath)
    {
        // load an image
        System.Drawing.Bitmap image = (Bitmap)Bitmap.FromFile(filePath);
        // create filter

        // 4 - Rusty effect
        IFilter filter4 = new TexturedFilter(new CloudsTexture(),
            new Sepia(), new GrayscaleBT709());
        // apply filter
        Bitmap newImage4 = filter4.Apply(image);

        return newImage4;
    }
}