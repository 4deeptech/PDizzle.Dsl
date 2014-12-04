using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.PDizzle
{
    public partial class AggregateRootShapeBase
    {
        static string GetDisplayPropertyFromAggregateRootForProperties(DslModeling.ModelElement element)
        {
            global::FourDeep.PDizzle.Property root = (global::FourDeep.PDizzle.Property)element;

            return root.Order + " " + root.Name + " : " + (string.IsNullOrEmpty(root.Namespace) ? "" : root.Namespace + ".") + root.Type;
        }

        static global::System.Collections.IList FilterElementsFromAggregateRootForProperties(global::System.Collections.IEnumerable elements)
        {
            List<Property> properties = new List<Property>();

            foreach (Property p in elements)
            {
                properties.Add(p);
            }
            return properties.OrderBy(prp => prp.Order).ToList();
        }
    }
}
