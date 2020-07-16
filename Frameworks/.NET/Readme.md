# .NET Ecosystem
* .NET was created by Microsoft and released on February 13, 2002

## Components

### Runtimes
* **.NET Framework**
   *  WPF, Windows Form, ASP.NET
   *  It's actually a runtime that also includes 
   *  Oldest runtime in the .NET ecosystem
   *  It is windows centric as it uses Windows specific API
* **.NET Core**
   * ASP.NET Core, UWP
   * Runs on cross platform
   * Runs side by side (many versions supported simultaneously)
   * Small and optimized for performance 
* **Mono for Xamarin**
   * iOS, OSX, Android
   * Cross platform implementation of .NET
   * Develop native applications
   * Uses specific APIs for native platforms

### Library
* .NET Standard 
  * This is a specification for .NET APIs that have implementation for each of the 3 runtimes
  * The above stated three runtimes all implement the .NET standard
  * This allows for the code created in one runtime be executed in the other

### Common Infrastructure
* Languages - C#, Visual Basic, F#
* Build Tools & Compilers - MSBuild, JIT, Garbage collections
* Runtime components - Common Language Runtime (CLR), Core CLR, Roslyn

All these components combined are known as the .NET development platform. The .NET Ecosystem can be described as a set of runtimes built upon a common specification all using some set of common tools

# In Detail

## The .NET Framework
* Released in 2002
* Partly Open source on [Github](https://github.com/microsoft/referencesource)
* Made up of CLR, Class Library, and various workloads like WPF, Windows Form, ASP.NET
* Runs on only Windows Platform
* Uses direct Windows API
* The .NET Framework has to be installed on the system for it's application to work. Windows systems already come installed with it
* We can install a number of different version of this framework, each version contains a bundle of CLR and Library.
* Breaking changes are always introduced with major version changes, and never with minor versions
* Versioning a.b.c :
  * a : the major version - new CLR
  * b : the minor version - new library
  * c : revision - bug fixes

### .NET Framework Class Library
Provides a lot of functionalities to the **.NET Framework** like many classes, interfaces and types. It is also known as the **base class library**. It also has specific code for interacting with the Windows system

### Workloads 
Workloads refers to the numerous types of applications that can be created using the Runtime
* Console applications
* Windows Communication Foundation (WCF) - For web service communication
* Windows Workflow Foundation (WF) - Automating business processes
* Windows Presentation Foundation (WPF) - Windows Desktop application with Complex UI
* Windows Forms - Windows desktop apps with simple UI
* ASP.NET - For web applications including forms, MVC, and Web API applications
* Microsoft Azure - Applications for WebJobs and cloudServices, etc

## CLR
The CLR (Common Language Runtime) is part of the build tools and languages used in the runtimes as part of common infrastructure. 

It manages and runs the code that is written for the runtime through compilation mechanism like JIT and helper mechanisms like Garbage collection. It is supports the languages - C#, F#, VB.NET. The code that is run and managed by the CLR is called managed code and all other code is as you guessed is called unmanaged code



# Reference 
1. [The .NET Ecosystem: The Big Picture](https://app.pluralsight.com/profile/author/barry-luijbregts)
2. [Barry Luijbregts](https://app.pluralsight.com/profile/author/barry-luijbregts) : [Github](https://github.com/bmaluijb)
3. [Code Samples](https://github.com/bmaluijb/Dot-Net-Ecosystem)