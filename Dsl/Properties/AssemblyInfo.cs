#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"4Deep Technologies")]
[assembly: AssemblyProduct(@"PDizzle")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"FourDeep.PDizzle.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100B9B26A94A1C296950FE8103B05C11C3EFFA80C8BCF0A074FB67B83AE5A6406C0F63B61DB7C088C3BDBEFE9B930C9117BD26AF1045195E719BC3932F6436C301B9D1529F78171A01C772543141FD484037549A8C8FA04EAC00DB075F543BB58A98156B84673846595C9B2D7B6714FB61E5C5A455DBDB65257AD9D6368EB926DAF")]