 

#region (c) 2015 4Deep Technologies LLC

// Copyright (c) 4Deep Technologies LLC 2015 (http://www.4deeptech.com)
// Created by Darren Ford

//Generated using PDizzle DSL Model and Code Generator
//see http://www.4deeptech.com/blog/post/2012/02/16/Creating-a-DSL-for-DDD-and-Event-Sourcing-Code-Generation.aspx
#endregion
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Runtime.Serialization;
using Dizzle.Cqrs.Portable;
using Cqrs.Events;
using Cqrs.Commands;
using Cqrs.Model; 

namespace Cqrs.Model
{
	/// <summary>
	/// The player with a really long description to see if it wraps
	/// </summary> 
	public partial class Player : Aggregate,
		IHandleCommand<CreatePlayer>
,
		IApplyEvent<PlayerCreated>

	{
		/// <summary>
		/// The id
		/// </summary>
		[DataMember(Order = 1)]
        public PlayerId Id { get; internal set; }


		public Player()
        {
            _state = state;
			_context = context;
        }

	}//end aggregateroot

	#region entities
	[DataContract]
	public partial class Address
	{
		/// <summary>
		/// Street 1 
		/// </summary>
		[DataMember(Order = 1)]
        public String AddressLine1 { get; set; }

		
		public Address()
		{
		}

		public Address(String addressLine1) 
		{
			AddressLine1 = addressLine1;
		}

	}
	#endregion
}	

namespace Cqrs.Commands 
{
	/// <summary>
	/// create player
	/// </summary>
	[DataContract(Namespace = "Cqrs")]
    public partial class CreatePlayer
    {

		/// <summary>
		/// The id
		/// </summary>
		[DataMember(Order = 1)] 
        public PlayerId Id { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)] 
        public String Name { get; private set; }

		public CreatePlayer() 
        {
            
        }

        public CreatePlayer(PlayerId id, String name)
        {
            Id = id;
			Name = name;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}, Name {2}",GetType().Name, Id, Name);
        }
    }//end CreatePlayer class


}//end namespace

namespace Cqrs.Events
{
	/// <summary>
	/// player was created
	/// </summary>
	[DataContract(Namespace = "Cqrs")]
    public partial class PlayerCreated : IEvent
    {

		/// <summary>
		/// The id
		/// </summary>
		[DataMember(Order = 1)] 
        public PlayerId Id { get; private set; }

		public PlayerCreated() 
        {
            
        }

        public PlayerCreated(PlayerId id)
        {
            Id = id;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}",GetType().Name, Id);
        }
    }//end PlayerCreated class


}//end namespace

namespace Cqrs.Views 
{
	/// <summary>
	/// The player view
	/// </summary>
    public partial class PlayerView
    {

		/// <summary>
		/// The id
		/// </summary>
		[DataMember(Order = 1)] 
        public PlayerId Id { get; set; }

		public PlayerView() 
        {
            
        }

        public PlayerView(PlayerId id)
        {
            Id = id;
        }
        
    }//end PlayerView class


}//end namespace
