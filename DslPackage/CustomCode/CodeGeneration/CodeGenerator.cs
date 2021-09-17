using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using FourDeep.PDizzle.CustomCode.CodeGeneration;
using System.Windows.Forms;

namespace FourDeep.PDizzle
{
    [System.Runtime.InteropServices.Guid("6CEB1406-CB25-445d-BD4B-6D52C72B3EB5")]
    public class CodeGenerator : TemplatedCodeGenerator
    {
        private string LocateTemplate(DirectoryInfo dnfo, string fileName)
        {
            var files = dnfo.GetFiles("AggregateRootCoreTemplate.t4");
            if (files.Count() > 0)
            {
                return files.First().FullName;
            }
            else
            {
                if(dnfo.Parent != null)
                {
                    return LocateTemplate(dnfo.Parent, fileName);
                }
                return null;
            }

        }
        protected override byte[] GenerateCode(string inputFileName, string inputFileContent) 
        {
            // Replace the supplied file contents with the template we want to run 
            FileInfo nfo = new FileInfo(inputFileName);
            string coreTemplate = LocateTemplate(nfo.Directory, "AggregateRootCoreTemplate.t4");
            if (coreTemplate != null && File.Exists(coreTemplate))
            {
                inputFileContent = File.ReadAllText(coreTemplate, ASCIIEncoding.UTF8);
            }
            else
            {
                inputFileContent = ASCIIEncoding.UTF8.GetString(CodeGenerationResource.AggregateRootCoreTemplate);
            }
            
            // Substitute the name of the current model file into the template. 
            FileInfo fi = new FileInfo(inputFileName);
            inputFileContent = inputFileContent.Replace("MyAggregateName.pdizzle", fi.Name); 
            // Now just delegate the rest of the work to the base class 
            byte[] data; 
            data = base.GenerateCode(inputFileName, inputFileContent); 
            byte[] ascii = new byte[data.Length - 3]; 
            Array.Copy(data, 3, ascii, 0, data.Length - 3); 
            return ascii;
        }
    }
}
