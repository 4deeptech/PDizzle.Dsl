<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="42e47e27-c8b0-4982-a92d-b2b40f109b1c" Description="Description for FourDeep.PDizzle.PDizzle" Name="PDizzle" DisplayName="PDizzle" Namespace="FourDeep.PDizzle" ProductName="PDizzle" CompanyName="4Deep Technologies" PackageGuid="bc1d75bb-efe3-43d0-a087-c9c3d3829594" PackageNamespace="FourDeep.PDizzle" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="08bec8f8-a647-427e-99aa-9672ba79a223" Description="The root in which all other elements are embedded. Appears as a diagram." Name="AggregateModel" DisplayName="Aggregate Model" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="3a453e98-d39f-4393-907e-c2f03620da1a" Description="Description for FourDeep.PDizzle.AggregateModel.Model Namespace" Name="ModelNamespace" DisplayName="Model Namespace" DefaultValue="Cqrs">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="AggregateRoot" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHasAggregateRoot.AggregateRoot</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainCommand" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHasDomainCommands.DomainCommands</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="View" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHasViews.Views</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainEvent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHandlesDomainEvents.DomainEvented</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Entity" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateModelHasEntities.Entities</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="3474db54-efe0-40f5-93f3-eabb0b41a9c8" Description="Represents the aggregate root which defines a consistency boundary" Name="AggregateRoot" DisplayName="Aggregate Root" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="9d58d1cf-50d9-470c-9124-7e6ac7ad0e16" Description="Description for FourDeep.PDizzle.AggregateRoot.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9fce5e01-54f7-487b-a16f-c5346d6970cd" Description="Description for FourDeep.PDizzle.AggregateRoot.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateRootHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="d35f5543-23a3-465d-971b-f45f7eba6e53" Description="Description for FourDeep.PDizzle.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="8e4d214d-f3a4-4da8-adb5-376a21916e34" Description="Description for FourDeep.PDizzle.DomainCommand.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f755037b-eb78-4897-a497-e9c94690c633" Description="Description for FourDeep.PDizzle.DomainCommand.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="46c483af-eba5-4055-9cc7-eada827440d6" Description="Description for FourDeep.PDizzle.DomainCommand.Required Privilege" Name="RequiredPrivilege" DisplayName="Required Privilege">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DomainCommandHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="78654c4a-7675-4a61-a7c9-50cdd52aae41" Description="Description for FourDeep.PDizzle.Property" Name="Property" DisplayName="Property" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="8165d072-3b54-48d7-b591-0e0b1a675e31" Description="Description for FourDeep.PDizzle.Property.Order" Name="Order" DisplayName="Order" DefaultValue="999">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c44f6025-3dca-48cc-bb96-9d3865cabd3e" Description="Description for FourDeep.PDizzle.Property.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b05452e2-11dd-47a7-8d31-f6ac98e50a3a" Description="Description for FourDeep.PDizzle.Property.Type" Name="Type" DisplayName="Type" Kind="CustomStorage">
          <Attributes>
            <ClrAttribute Name="System.ComponentModel.Editor">
              <Parameters>
                <AttributeParameter Value="typeof(PropertyTypeNameEditor), typeof(System.Drawing.Design.UITypeEditor)" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="62ab7f87-897c-473e-a7e2-25be5a472bd7" Description="Description for FourDeep.PDizzle.Property.Namespace" Name="Namespace" DisplayName="Namespace">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="05859a50-1d9a-4d97-af74-1b2e6e058e7e" Description="Description for FourDeep.PDizzle.Property.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="5e39a750-0a8c-4c30-a4c3-f90bc0122643" Description="Description for FourDeep.PDizzle.View" Name="View" DisplayName="View" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="c6e0997a-a735-4217-ae49-631bbe2a0f49" Description="Description for FourDeep.PDizzle.View.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="77ac4950-2c94-49e7-9565-3175d67afb8b" Description="Description for FourDeep.PDizzle.View.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ViewHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainEvent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ViewHandlesDomainEvents.DomainEvents</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="4d19bf3f-5132-48ab-ab1b-04bd5e97a942" Description="Description for FourDeep.PDizzle.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="1e1de513-cb26-43bd-b3a5-eca5f63f45ca" Description="Description for FourDeep.PDizzle.DomainEvent.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="11c48a4d-4ba0-44c1-a21a-c5ec903cca0d" Description="Description for FourDeep.PDizzle.DomainEvent.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DomainEventHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="bfa2df6f-9ee9-4bcc-9af7-b54473424eef" Description="Description for FourDeep.PDizzle.Entity" Name="Entity" DisplayName="Entity" Namespace="FourDeep.PDizzle">
      <Properties>
        <DomainProperty Id="8e07b5ad-69ad-46a3-9225-e61ff49463dd" Description="Description for FourDeep.PDizzle.Entity.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="511afacc-5527-4e1a-8811-d85c9f67ac57" Description="Description for FourDeep.PDizzle.Entity.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>EntityHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="eaa5e189-9f2a-4aa9-b3f7-0ab83cfd7490" Description="Embedding relationship between the Model and Elements" Name="AggregateModelHasAggregateRoot" DisplayName="Aggregate Model Has Aggregate Root" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="b2548f74-19ee-40c4-924b-2b2ec7f8e48a" Description="" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="AggregateRoot" Multiplicity="One" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Aggregate Root">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1b87ae1f-e56d-4d2d-b218-5398455f8d5b" Description="" Name="Element" DisplayName="Element" PropertyName="AggregateModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f627d2c0-1e16-4ade-bd4d-aeb4620d2f19" Description="Description for FourDeep.PDizzle.AggregateModelHasDomainCommands" Name="AggregateModelHasDomainCommands" DisplayName="Aggregate Model Has Domain Commands" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="b694f8c8-b24d-4770-80e2-d954d8abe545" Description="Description for FourDeep.PDizzle.AggregateModelHasDomainCommands.AggregateModel" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="DomainCommands" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Commands">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b27e7fdf-14c3-4925-806a-78864feb63b4" Description="Description for FourDeep.PDizzle.AggregateModelHasDomainCommands.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="AggregateModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="26a477dc-35f5-494e-84e9-0ace4c97e4e2" Description="Description for FourDeep.PDizzle.AggregateModelHasProperties" Name="AggregateModelHasProperties" DisplayName="Aggregate Model Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="2570a6ba-7d86-4170-a54a-8ad660af928a" Description="Description for FourDeep.PDizzle.AggregateModelHasProperties.AggregateModel" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="7d35a42a-3b69-4614-a894-566c8b0cf88e" Description="Description for FourDeep.PDizzle.AggregateModelHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="AggregateModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="146a59f6-6a1d-4630-99f0-8d2a26a711d2" Description="Description for FourDeep.PDizzle.AggregateModelHasViews" Name="AggregateModelHasViews" DisplayName="Aggregate Model Has Views" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="7c9f2b8f-fdb7-47ef-8d92-5a16967a71bb" Description="Description for FourDeep.PDizzle.AggregateModelHasViews.AggregateModel" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="Views" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Views">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9646f7f2-6164-4b6e-a05e-827036b39223" Description="Description for FourDeep.PDizzle.AggregateModelHasViews.View" Name="View" DisplayName="View" PropertyName="AggregateModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="be3aad73-66eb-43ed-8ffa-3ef69caef54f" Description="Description for FourDeep.PDizzle.AggregateModelHandlesDomainEvents" Name="AggregateModelHandlesDomainEvents" DisplayName="Aggregate Model Handles Domain Events" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="9c2c53c2-be14-4d6c-953d-14c7b87b71bf" Description="Description for FourDeep.PDizzle.AggregateModelHandlesDomainEvents.AggregateModel" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="DomainEvented" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="83e86e75-6be8-42e0-bd00-e1eb1fca563e" Description="Description for FourDeep.PDizzle.AggregateModelHandlesDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="AggregateModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ebdf0af1-7e93-4e9b-a085-bdf485594fc4" Description="Description for FourDeep.PDizzle.AggregateModelHasEntities" Name="AggregateModelHasEntities" DisplayName="Aggregate Model Has Entities" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="8cea9060-ac1a-4889-acb0-791dbb839a69" Description="Description for FourDeep.PDizzle.AggregateModelHasEntities.AggregateModel" Name="AggregateModel" DisplayName="Aggregate Model" PropertyName="Entities" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Entities">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f424b12c-d3a7-4b29-afa3-e89453141237" Description="Description for FourDeep.PDizzle.AggregateModelHasEntities.Entity" Name="Entity" DisplayName="Entity" PropertyName="AggregateModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aggregate Model">
          <RolePlayer>
            <DomainClassMoniker Name="Entity" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e804c078-c887-4e18-932a-b1b67cd2b0b2" Description="Description for FourDeep.PDizzle.DomainCommandHasProperties" Name="DomainCommandHasProperties" DisplayName="Domain Command Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="78c9bf1c-7145-4764-8454-494955532524" Description="Description for FourDeep.PDizzle.DomainCommandHasProperties.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="78ce9b51-73cb-4e8a-b748-5e5a8756a0dd" Description="Description for FourDeep.PDizzle.DomainCommandHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="DomainCommand" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Domain Command">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="82cce89e-4ccf-440a-aee6-b146e0f88cb3" Description="Description for FourDeep.PDizzle.ViewHasProperties" Name="ViewHasProperties" DisplayName="View Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="1ee93287-841a-413b-b554-5e95146927c7" Description="Description for FourDeep.PDizzle.ViewHasProperties.View" Name="View" DisplayName="View" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="dadf4055-f364-40c6-a3d3-5355dee8bb57" Description="Description for FourDeep.PDizzle.ViewHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="View" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="View">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="af3775fd-c8a2-4c48-987b-d04f43dc2214" Description="Description for FourDeep.PDizzle.ViewHandlesDomainEvents" Name="ViewHandlesDomainEvents" DisplayName="View Handles Domain Events" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="0027c79a-c5ea-4d8c-b588-f22a9890b8fa" Description="Description for FourDeep.PDizzle.ViewHandlesDomainEvents.View" Name="View" DisplayName="View" PropertyName="DomainEvents" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5cdab9e6-4a9e-462c-b282-d4f04af0eacc" Description="Description for FourDeep.PDizzle.ViewHandlesDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="View" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="View">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="62ca0f4c-5524-4d3d-86e5-9a7b3a3123b9" Description="Description for FourDeep.PDizzle.DomainEventHasProperties" Name="DomainEventHasProperties" DisplayName="Domain Event Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="76d5a3ab-ec48-41e6-a4ff-7b2d70cfe1a0" Description="Description for FourDeep.PDizzle.DomainEventHasProperties.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3672caff-cd8b-4eef-96c9-d125b5a70da1" Description="Description for FourDeep.PDizzle.DomainEventHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="DomainEvent" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Domain Event">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="45d81785-7491-4dde-a3c3-b8ddfc7b768e" Description="Description for FourDeep.PDizzle.EntityHasProperties" Name="EntityHasProperties" DisplayName="Entity Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="eb865d6d-7ef6-4c45-99be-d948af70e1aa" Description="Description for FourDeep.PDizzle.EntityHasProperties.Entity" Name="Entity" DisplayName="Entity" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="Entity" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4e19fc23-ab17-4de4-bca0-fb2976ba978e" Description="Description for FourDeep.PDizzle.EntityHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="Entity" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Entity">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="72a252ba-ba4f-4e53-ab6f-8221b10d4bab" Description="Description for FourDeep.PDizzle.AggregateRootHasProperties" Name="AggregateRootHasProperties" DisplayName="Aggregate Root Has Properties" Namespace="FourDeep.PDizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="4f372ad7-96f5-45bf-a086-4d80f7ce21de" Description="Description for FourDeep.PDizzle.AggregateRootHasProperties.AggregateRoot" Name="AggregateRoot" DisplayName="Aggregate Root" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c2c50ed5-bda5-46b2-8e62-5a4f48166824" Description="Description for FourDeep.PDizzle.AggregateRootHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="AggregateRoot" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Aggregate Root">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="4d31c36f-94f4-4b26-85b4-5141a47895ae" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainCommands" Name="AggregateRootReferencesDomainCommands" DisplayName="Aggregate Root References Domain Commands" Namespace="FourDeep.PDizzle">
      <Source>
        <DomainRole Id="e7992102-9067-4816-83c6-847cfe56af92" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainCommands.AggregateRoot" Name="AggregateRoot" DisplayName="Aggregate Root" PropertyName="DomainCommands" PropertyDisplayName="Domain Commands">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8932114b-8d0e-4281-a0f7-dca096bfcde2" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainCommands.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="AggregateRooted" PropertyDisplayName="Aggregate Rooted">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d58de6f3-6e53-47a2-be88-3537aade1705" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainEvents" Name="AggregateRootReferencesDomainEvents" DisplayName="Aggregate Root References Domain Events" Namespace="FourDeep.PDizzle">
      <Source>
        <DomainRole Id="cd02331a-da04-4f39-933a-0a49410af822" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainEvents.AggregateRoot" Name="AggregateRoot" DisplayName="Aggregate Root" PropertyName="DomainEvents" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="12c4b2b1-21bf-46c7-8868-c2b4e0439ef6" Description="Description for FourDeep.PDizzle.AggregateRootReferencesDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="AggregateRooted" PropertyDisplayName="Aggregate Rooted">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <ExternalType Name="Color" Namespace="System.Drawing" />
    <ExternalType Name="LinearGradientMode" Namespace="System.Drawing.Drawing2D" />
  </Types>
  <Shapes>
    <GeometryShape Id="ac29cfb1-3c0f-46f8-b07c-ec7523920f20" Description="Description for FourDeep.PDizzle.PropertyShape" Name="PropertyShape" DisplayName="Property Shape" Namespace="FourDeep.PDizzle" FixedTooltipText="Property Shape" FillColor="LavenderBlush" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="OrderDecorator" DisplayName="Order Decorator" DefaultText="OrderDecorator" FontStyle="Bold" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TypeDecorator" DisplayName="Type Decorator" DefaultText="TypeDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NamespaceDecorator" DisplayName="Namespace Decorator" DefaultText="NamespaceDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <CompartmentShape Id="190e49cc-2607-4fb3-998e-4fd765067f7b" Description="Description for FourDeep.PDizzle.DomainCommandShape" Name="DomainCommandShape" DisplayName="Domain Command Shape" Namespace="FourDeep.PDizzle" GeneratesDoubleDerived="true" FixedTooltipText="Domain Command Shape" ExposesTextColor="true" FillColor="SkyBlue" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="820628c8-e12d-4fb3-9aee-4cbff1e2df08" Description="Description for FourDeep.PDizzle.DomainCommandShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ab7f694f-05a7-4129-9640-fd0f2cf9f9b9" Description="Description for FourDeep.PDizzle.DomainCommandShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2297f848-1b0e-4aa3-b9aa-d9d6397e6d50" Description="Description for FourDeep.PDizzle.DomainCommandShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CommandNameDecorator" DisplayName="Command Name Decorator" DefaultText="CommandNameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="f6162fdd-1e99-42b9-9090-1f4d5af3a2ac" Description="Description for FourDeep.PDizzle.DomainEventShape" Name="DomainEventShape" DisplayName="Domain Event Shape" Namespace="FourDeep.PDizzle" GeneratesDoubleDerived="true" FixedTooltipText="Domain Event Shape" ExposesTextColor="true" FillColor="Orange" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="2b7d9d14-0966-4847-97bd-7bc3b5f022a8" Description="Description for FourDeep.PDizzle.DomainEventShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="48db0925-769c-4778-8b1a-e1fc2d5ab1a7" Description="Description for FourDeep.PDizzle.DomainEventShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="01ff5f19-60c2-4fe8-8f2b-ba0e1b373f6c" Description="Description for FourDeep.PDizzle.DomainEventShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="40ba68af-d423-4e01-b43a-0acf142b11dc" Description="Description for FourDeep.PDizzle.EntityShape" Name="EntityShape" DisplayName="Entity Shape" Namespace="FourDeep.PDizzle" GeneratesDoubleDerived="true" FixedTooltipText="Entity Shape" ExposesTextColor="true" FillColor="Thistle" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="RoundedRectangle">
      <Properties>
        <DomainProperty Id="a16acb98-a7f3-4aa9-b557-f15ea74b2afe" Description="Description for FourDeep.PDizzle.EntityShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6264de99-03e1-4c58-94f5-71bcd9db9d6e" Description="Description for FourDeep.PDizzle.EntityShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="01a8fd6d-b5a8-4314-b442-52a7231ddd95" Description="Description for FourDeep.PDizzle.EntityShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="Enter Description Here" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="d63e8334-b13f-4b2a-87b1-847b42c6d145" Description="Description for FourDeep.PDizzle.ViewShape" Name="ViewShape" DisplayName="View Shape" Namespace="FourDeep.PDizzle" GeneratesDoubleDerived="true" FixedTooltipText="View Shape" ExposesTextColor="true" FillColor="YellowGreen" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="RoundedRectangle">
      <Properties>
        <DomainProperty Id="0e13d365-28cf-4b38-bd3d-7ddb0e291bbc" Description="Description for FourDeep.PDizzle.ViewShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="07319c29-a488-41b4-9139-24b2e1bb26f6" Description="Description for FourDeep.PDizzle.ViewShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="28416ab5-6c18-453c-95a8-c27db36c5956" Description="Description for FourDeep.PDizzle.ViewShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
      <Compartment Name="Events" Title="Events" />
    </CompartmentShape>
    <CompartmentShape Id="ed123a13-de73-4a70-917a-e32103279f2b" Description="Description for FourDeep.PDizzle.AggregateRootShape" Name="AggregateRootShape" DisplayName="Aggregate Root Shape" Namespace="FourDeep.PDizzle" GeneratesDoubleDerived="true" FixedTooltipText="Aggregate Root Shape" ExposesTextColor="true" FillColor="Red" InitialHeight="1" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="RoundedRectangle">
      <Properties>
        <DomainProperty Id="0fc801e4-7f48-4eff-8b73-b452f42e477b" Description="Description for FourDeep.PDizzle.AggregateRootShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f1d62534-55df-4af2-b89f-52e9f0061ecb" Description="Description for FourDeep.PDizzle.AggregateRootShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="701d504c-2ae0-4472-ab44-9b09f103c02a" Description="Description for FourDeep.PDizzle.AggregateRootShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="Enter Description Here" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="3e1965a1-d98e-4315-bffa-e912e17ea7b2" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="CommandConnector" DisplayName="Command Connector" Namespace="FourDeep.PDizzle" FixedTooltipText="Command Connector" Color="113, 111, 110" SourceEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="af9b740c-e503-44c6-ab13-035b298c91a0" Description="Description for FourDeep.PDizzle.DomainEventConnector" Name="DomainEventConnector" DisplayName="Domain Event Connector" Namespace="FourDeep.PDizzle" FixedTooltipText="Domain Event Connector" SourceEndStyle="HollowArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="PDizzleSerializationBehavior" Namespace="FourDeep.PDizzle">
    <ClassData>
      <XmlClassData TypeName="AggregateModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelMoniker" ElementName="aggregateModel" MonikerTypeName="AggregateModelMoniker">
        <DomainClassMoniker Name="AggregateModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="aggregateRoot">
            <DomainRelationshipMoniker Name="AggregateModelHasAggregateRoot" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainCommands">
            <DomainRelationshipMoniker Name="AggregateModelHasDomainCommands" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="AggregateModelHasProperties" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="views">
            <DomainRelationshipMoniker Name="AggregateModelHasViews" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvented">
            <DomainRelationshipMoniker Name="AggregateModelHandlesDomainEvents" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entities">
            <DomainRelationshipMoniker Name="AggregateModelHasEntities" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="modelNamespace">
            <DomainPropertyMoniker Name="AggregateModel/ModelNamespace" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRoot" MonikerAttributeName="name" SerializeId="true" MonikerElementName="aggregateRootMoniker" ElementName="aggregateRoot" MonikerTypeName="AggregateRootMoniker">
        <DomainClassMoniker Name="AggregateRoot" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="AggregateRoot/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="AggregateRoot/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="AggregateRootHasProperties" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainCommands">
            <DomainRelationshipMoniker Name="AggregateRootReferencesDomainCommands" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvents">
            <DomainRelationshipMoniker Name="AggregateRootReferencesDomainEvents" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHasAggregateRoot" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHasAggregateRootMoniker" ElementName="aggregateModelHasAggregateRoot" MonikerTypeName="AggregateModelHasAggregateRootMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHasAggregateRoot" />
      </XmlClassData>
      <XmlClassData TypeName="PDizzleDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="pDizzleDiagramMoniker" ElementName="pDizzleDiagram" MonikerTypeName="PDizzleDiagramMoniker">
        <DiagramMoniker Name="PDizzleDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommand" MonikerAttributeName="name" SerializeId="true" MonikerElementName="domainCommandMoniker" ElementName="domainCommand" MonikerTypeName="DomainCommandMoniker">
        <DomainClassMoniker Name="DomainCommand" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="DomainCommand/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="DomainCommand/Description" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="requiredPrivilege">
            <DomainPropertyMoniker Name="DomainCommand/RequiredPrivilege" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="DomainCommandHasProperties" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHasDomainCommands" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHasDomainCommandsMoniker" ElementName="aggregateModelHasDomainCommands" MonikerTypeName="AggregateModelHasDomainCommandsMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHasDomainCommands" />
      </XmlClassData>
      <XmlClassData TypeName="Property" MonikerAttributeName="" SerializeId="true" MonikerElementName="propertyMoniker" ElementName="property" MonikerTypeName="PropertyMoniker">
        <DomainClassMoniker Name="Property" />
        <ElementData>
          <XmlPropertyData XmlName="order">
            <DomainPropertyMoniker Name="Property/Order" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Property/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="Property/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="namespace">
            <DomainPropertyMoniker Name="Property/Namespace" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="Property/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="View" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewMoniker" ElementName="view" MonikerTypeName="ViewMoniker">
        <DomainClassMoniker Name="View" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="View/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="View/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="ViewHasProperties" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvents">
            <DomainRelationshipMoniker Name="ViewHandlesDomainEvents" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DomainEvent" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventMoniker" ElementName="domainEvent" MonikerTypeName="DomainEventMoniker">
        <DomainClassMoniker Name="DomainEvent" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="DomainEvent/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="DomainEvent/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="DomainEventHasProperties" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Entity" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityMoniker" ElementName="entity" MonikerTypeName="EntityMoniker">
        <DomainClassMoniker Name="Entity" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Entity/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="Entity/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="EntityHasProperties" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHasPropertiesMoniker" ElementName="aggregateModelHasProperties" MonikerTypeName="AggregateModelHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHasViews" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHasViewsMoniker" ElementName="aggregateModelHasViews" MonikerTypeName="AggregateModelHasViewsMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHasViews" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHandlesDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHandlesDomainEventsMoniker" ElementName="aggregateModelHandlesDomainEvents" MonikerTypeName="AggregateModelHandlesDomainEventsMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHandlesDomainEvents" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateModelHasEntities" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateModelHasEntitiesMoniker" ElementName="aggregateModelHasEntities" MonikerTypeName="AggregateModelHasEntitiesMoniker">
        <DomainRelationshipMoniker Name="AggregateModelHasEntities" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommandHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainCommandHasPropertiesMoniker" ElementName="domainCommandHasProperties" MonikerTypeName="DomainCommandHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="DomainCommandHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="ViewHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewHasPropertiesMoniker" ElementName="viewHasProperties" MonikerTypeName="ViewHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="ViewHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="ViewHandlesDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewHandlesDomainEventsMoniker" ElementName="viewHandlesDomainEvents" MonikerTypeName="ViewHandlesDomainEventsMoniker">
        <DomainRelationshipMoniker Name="ViewHandlesDomainEvents" />
      </XmlClassData>
      <XmlClassData TypeName="DomainEventHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventHasPropertiesMoniker" ElementName="domainEventHasProperties" MonikerTypeName="DomainEventHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="DomainEventHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="EntityHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityHasPropertiesMoniker" ElementName="entityHasProperties" MonikerTypeName="EntityHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="EntityHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootHasPropertiesMoniker" ElementName="aggregateRootHasProperties" MonikerTypeName="AggregateRootHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="AggregateRootHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="CommandConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="commandConnectorMoniker" ElementName="commandConnector" MonikerTypeName="CommandConnectorMoniker">
        <ConnectorMoniker Name="CommandConnector" />
      </XmlClassData>
      <XmlClassData TypeName="PropertyShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="propertyShapeMoniker" ElementName="propertyShape" MonikerTypeName="PropertyShapeMoniker">
        <GeometryShapeMoniker Name="PropertyShape" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommandShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainCommandShapeMoniker" ElementName="domainCommandShape" MonikerTypeName="DomainCommandShapeMoniker">
        <CompartmentShapeMoniker Name="DomainCommandShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="DomainCommandShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="DomainCommandShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="DomainCommandShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DomainEventConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventConnectorMoniker" ElementName="domainEventConnector" MonikerTypeName="DomainEventConnectorMoniker">
        <ConnectorMoniker Name="DomainEventConnector" />
      </XmlClassData>
      <XmlClassData TypeName="DomainEventShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventShapeMoniker" ElementName="domainEventShape" MonikerTypeName="DomainEventShapeMoniker">
        <CompartmentShapeMoniker Name="DomainEventShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="DomainEventShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="DomainEventShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="DomainEventShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EntityShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityShapeMoniker" ElementName="entityShape" MonikerTypeName="EntityShapeMoniker">
        <CompartmentShapeMoniker Name="EntityShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="EntityShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="EntityShape/FillGradientMode" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="EntityShape/TextColor" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ViewShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewShapeMoniker" ElementName="viewShape" MonikerTypeName="ViewShapeMoniker">
        <CompartmentShapeMoniker Name="ViewShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="ViewShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="ViewShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="ViewShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootShapeMoniker" ElementName="aggregateRootShape" MonikerTypeName="AggregateRootShapeMoniker">
        <CompartmentShapeMoniker Name="AggregateRootShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="AggregateRootShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="AggregateRootShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="AggregateRootShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootReferencesDomainCommands" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootReferencesDomainCommandsMoniker" ElementName="aggregateRootReferencesDomainCommands" MonikerTypeName="AggregateRootReferencesDomainCommandsMoniker">
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainCommands" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootReferencesDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootReferencesDomainEventsMoniker" ElementName="aggregateRootReferencesDomainEvents" MonikerTypeName="AggregateRootReferencesDomainEventsMoniker">
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainEvents" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="PDizzleExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="CommandConnectionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainCommands" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainCommand" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="EventConnectionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainEvents" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainEvent" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AggregateRootReferencesDomainCommandsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainCommands" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainCommand" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AggregateRootReferencesDomainEventsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainEvents" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainEvent" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="6e90e18c-83a2-4c97-ae3a-2924a2b536c5" Description="Description for FourDeep.PDizzle.PDizzleDiagram" Name="PDizzleDiagram" DisplayName="Minimal Language Diagram" Namespace="FourDeep.PDizzle">
    <Class>
      <DomainClassMoniker Name="AggregateModel" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="DomainCommand" />
        <ParentElementPath>
          <DomainPath>AggregateModelHasDomainCommands.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainCommandShape/CommandNameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainCommand/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainCommandShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainCommand/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="DomainCommandShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="DomainCommandShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>DomainCommandHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Property" />
        <ParentElementPath>
          <DomainPath>AggregateModelHasProperties.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/NamespaceDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Namespace" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/OrderDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Order" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/TypeDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Type" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="PropertyShape" />
      </ShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="DomainEvent" />
        <ParentElementPath>
          <DomainPath>AggregateModelHandlesDomainEvents.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainEventShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainEventShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="DomainEventShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="DomainEventShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>DomainEventHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Entity" />
        <ParentElementPath>
          <DomainPath>AggregateModelHasEntities.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="EntityShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entity/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="EntityShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entity/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="EntityShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="EntityShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>EntityHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="View" />
        <ParentElementPath>
          <DomainPath>AggregateModelHasViews.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ViewShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="View/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ViewShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="View/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ViewShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ViewShape/Events" />
          <ElementsDisplayed>
            <DomainPath>ViewHandlesDomainEvents.DomainEvents/!DomainEvent</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="ViewShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>ViewHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="AggregateRoot" />
        <ParentElementPath>
          <DomainPath>AggregateModelHasAggregateRoot.AggregateModel/!AggregateModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateRootShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateRoot/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateRootShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateRoot/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="AggregateRootShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="AggregateRootShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>AggregateRootHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="CommandConnector" />
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainCommands" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="DomainEventConnector" />
        <DomainRelationshipMoniker Name="AggregateRootReferencesDomainEvents" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="pdizzle" EditorGuid="8ba44c80-41ae-4880-97d2-ebe8b913162f">
    <RootClass>
      <DomainClassMoniker Name="AggregateModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="PDizzleSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="PDizzle">
      <ElementTool Name="AggregateRoot" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AggregateRoot" Tooltip="Create an Aggregate Root" HelpKeyword="AggregateRoot">
        <DomainClassMoniker Name="AggregateRoot" />
      </ElementTool>
      <ElementTool Name="Property" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Property" Tooltip="Property" HelpKeyword="Property">
        <DomainClassMoniker Name="Property" />
      </ElementTool>
      <ElementTool Name="DomainCommand" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Command" Tooltip="Create a Command" HelpKeyword="DomainCommand">
        <DomainClassMoniker Name="DomainCommand" />
      </ElementTool>
      <ElementTool Name="View" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="View" Tooltip="Create a View" HelpKeyword="View">
        <DomainClassMoniker Name="View" />
      </ElementTool>
      <ElementTool Name="Entity" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Entity" Tooltip="Create an Entity" HelpKeyword="Entity">
        <DomainClassMoniker Name="Entity" />
      </ElementTool>
      <ElementTool Name="Event" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Event" Tooltip="Create an Event" HelpKeyword="Event">
        <DomainClassMoniker Name="DomainEvent" />
      </ElementTool>
      <ConnectionTool Name="AggregateCommandWire" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Command Wire" Tooltip="Wire command to Aggregate" HelpKeyword="CommandWire" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="PDizzle/CommandConnectionBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="AggregateEventWire" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Event Wire" Tooltip="Aggregate Event Wire" HelpKeyword="EventWire" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="PDizzle/EventConnectionBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="PDizzleDiagram" />
  </Designer>
  <Explorer ExplorerGuid="44c6af61-3646-40ee-96cd-6ca59840146b" Title="PDizzle Explorer">
    <ExplorerBehaviorMoniker Name="PDizzle/PDizzleExplorer" />
  </Explorer>
</Dsl>