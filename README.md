# PDizzle.Dsl
Visual DSL for basic CQRS/ES style app.

The T4 Template wired in generates code to be used for this sample app:

* Dizzle.CQRS.Basic: https://github.com/4deeptech/Dizzle.Cqrs.Basic 

Look for the AggregateRootCoreTemplate.t4 file under

DslPackage\CustomCode\CodeGeneration\AggregateRootCoreTemplate.t4

which is used as the default generator template

You can copy this file and place it in the same folder where you create a .pdizzle file and it will use that one instead. 
That gives you a way to override the generated code.  If it does not find one then it uses the embedded resource(the default).
