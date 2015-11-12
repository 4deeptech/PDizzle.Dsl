using System;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using Microsoft.VisualStudio.Modeling;
using FourDeep.PDizzle;


namespace FourDeep.PDizzle.TextTransformation
{
    public class EventSourcingModelTextTransformation : ModelingTextTransformation
    {
        public override string TransformText()
        {
            throw new NotImplementedException();
        }

        public string GetAggregateRootName(AggregateModel context)
        {
            if (context != null && context.AggregateRoot != null)
                return context.AggregateRoot.Name;
            else return "Aggregate Root name cannot be obtained. Make sure your model contains an aggregate root with a name";
        }

        public string GetAggregateRootDescription(AggregateModel context)
        {
            if (context != null && context.AggregateRoot != null)
                return context.AggregateRoot.Description;
            else return "Aggregate Root description cannot be obtained. Make sure your model contains an aggregate root with a description";
        }

        //public string GetAggregateStateName(AggregateModel context)
        //{
        //    if (context != null && context.AggregateRoot != null && context.AggregateRoot.AggregateState != null)
        //        return context.AggregateRoot.AggregateState.Name;
        //    else return "Aggregate State has not been defined for the Aggregate Root.  Please make sure you define the State object and link it to the root";
        //}

        //public string GetAggregateStateDescription(AggregateModel context)
        //{
        //    if (context != null && context.Element != null && context.Element.AggregateState != null)
        //        return context.Element.AggregateState.Description;
        //    else return "Aggregate State has not been defined for the Aggregate Root.  Please make sure you define the State object and link it to the root";
        //}

        //public string GetAggregateStateIdType(AggregateModel context)
        //{
        //    if (context != null && context.Element != null && context.Element.AggregateState != null)
        //    {
        //        var props = context.Element.AggregateState.Properties;
        //        if (props.Count() > 0)
        //            return props.OrderBy(prop => prop.Order).First().Type;
        //        else
        //        {
        //            return "object //You are missing the first property which should be the aggregates id";
        //        }
        //    }
        //    else
        //        return "object //You are missing the aggregate state item";
        //}

        public void BuildCommandInterfaceMethods(AggregateModel context)
        {
            this.PushIndent("\t\t");
            foreach (DomainCommand command in context.AggregateRoot.DomainCommands)
            {
                if (!string.IsNullOrEmpty(command.RequiredPrivilege))
                {
                    this.WriteLine("[RequiresPrivilege(\"" + command.RequiredPrivilege + "\")]");
                }
                this.WriteLine("void Handle(" + command.Name + " c);");
            }
            this.PopIndent();
        }

        public void BuildCommandInterfaceMethodsWithContext(AggregateModel context)
        {
            this.PushIndent("\t\t");
            foreach (DomainCommand command in context.AggregateRoot.DomainCommands)
            {
                if(!string.IsNullOrEmpty(command.RequiredPrivilege))
                {
                    this.WriteLine("[RequiresPrivilege(\"" + command.RequiredPrivilege + "\")]");
                }
                this.WriteLine("void Handle(" + command.Name + " c, MessageContext context);");
            }
            this.PopIndent();
        }

        public string GetEventInterfaceExtenders(AggregateModel context)
        {
            //IApplyEvent<PlayerCreated>
            //this.PushIndent("\t\t");
            StringBuilder sb = new StringBuilder();
            int count = 0;
            foreach (DomainEvent evt in context.AggregateRoot.DomainEvents)
            {
                if(count == 0)
                    sb.AppendFormat("\n\t\tIApplyEvent<{0}>\n", evt.Name);
                else
                    sb.AppendFormat(",\n\t\tIApplyEvent<{0}>\n", evt.Name);
                count++;
            }
            //this.PopIndent();
            return sb.ToString();
        }

        public string GetCommandInterfaceExtenders(AggregateModel context)
        {
            
            //this.PushIndent("\t\t");
            StringBuilder sb = new StringBuilder();
            int count = 0;
            foreach (DomainCommand cmd in context.AggregateRoot.DomainCommands)
            {
                if (count == 0)
                    sb.AppendFormat("\n\t\tIHandleCommand<{0}>\n", cmd.Name);
                else
                    sb.AppendFormat(",\n\t\tIHandleCommand<{0}>\n", cmd.Name);
                count++;
            }
            //this.PopIndent();
            return sb.ToString();
        }

        public void BuildEventInterfaceMethods(AggregateModel context)
        {
            this.PushIndent("\t\t");
            foreach (DomainEvent evt in context.AggregateRoot.DomainEvents)
            {
                this.WriteLine("void Apply(" + evt.Name + " e);");
            }
            this.PopIndent();
        }

        public void BuildEventInterfaceMethodsWithContext(AggregateModel context)
        {
            this.PushIndent("\t\t");
            foreach (DomainEvent evt in context.AggregateRoot.DomainEvents)
            {
                this.WriteLine("void Apply(" + evt.Name + " e, MessageContext context);");
            }
            this.PopIndent();
        }

        public void BuildProperties(LinkedElementCollection<Property> properties)
        {
            int count = 0;
            foreach (Property prop in properties.ToArray().AsQueryable().OrderBy(prp=>prp.Order))
            {
                if (count == 0)
                    this.Write(prop.Type + " " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length-1));
                else
                    this.Write(", " + prop.Type + " " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length - 1));
                count++;
            }
        }

        public void BuildConstructorProperties(LinkedElementCollection<Property> properties)
        {
            this.PushIndent("\t\t\t");
            foreach (Property prop in properties)
            {
                this.WriteLine(prop.Name + " = " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length - 1) + ";");
            }
            this.PopIndent();
        }

        public string BuildPropertiesToString(LinkedElementCollection<Property> properties)
        {
            StringBuilder sb = new StringBuilder();
            int count = 1;
            sb.Append("string.Format(\"Type: {0}");
            foreach (Property prop in properties)
            {
                sb.Append(", " + prop.Name + " {"+count+"}");
                count++;
            }
            sb.Append("\",GetType().Name");
            foreach (Property prop in properties)
            {
                sb.Append(", " + prop.Name);
                count++;
            }
            sb.Append(")");
            return sb.ToString();
        }
    }
 }
